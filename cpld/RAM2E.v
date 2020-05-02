module RAM2E(C14M, PHI1, 
			 nWE, nWE80, nEN80, nC07X,
			 Ain, Din, Dout, nDOE, Vout, nVOE,
			 CKE, nCS, nRAS, nCAS, nRWE,
			 BA, RA, RD, DQML, DQMH,
			 DelayOut, DelayIn);

	/* Clocks */
	input C14M, PHI1;
	
	/* Control inputs */
	input nWE, nWE80, nEN80, nC07X;
	
 	/* Delay */
	output DelayOut = ~nEN80;
	input DelayIn;
	wire EN80 = DelayIn;
	
	/* Multiplexed Address Input */
	input [7:0] Ain;
	reg [7:0] RowA;
	
	/* 6502 Data Bus */
	input [7:0] Din;
	output nDOE = ~(EN80 & nWE);
	output reg [7:0] Dout;
	
	/* Video Data Bus */
	output nVOE = PHI1;
	output reg [7:0] Vout;
	
	/* RAMWorks Bank Register */
	reg [6:0] RWBank = 0;
	
	/* SDRAM */
	output reg CKE = 1;
	output reg nCS = 1, nRAS = 1, nCAS = 1, nRWE = 1;
	output reg [1:0] BA;
	reg RATransp = 0;
	output [11:0] RA;
	reg [11:8] RAH = 0;
	assign RA[11:8] = RAH;
	assign RA[7:0] = RATransp ? Ain[7:0] : RowA[7:0];
	output reg DQML = 1, DQMH = 1;
	wire RDOE = EN80 & ~nWE80;
	inout [7:0] RD = RDOE ? Din[7:0] : 8'bZ;

	/* State Counters */
	reg PHI1reg = 0; // Saved PHI1 at last rising clock edge
	reg PHI1seen = 0; // Have we seen PHI1 since reset?
	reg PHI0seen = 0; // Have we seen PHI0 since reset?
	reg [1:0] InitS = 0;
	reg [3:0] S = 0; // State counter
	reg [2:0] Ref = 0; // Refresh skip counter

	always @(posedge C14M) begin
		// Synchronize state counter to S1 when just entering PHI1
		PHI1reg <= PHI1; // Save old PHI1
		if (PHI1) PHI1seen <= 1; // PHI1seen set in PHI1
		if (~PHI1) PHI0seen <= 1; // PHI0seen set in PHI0
		S <= (PHI1 & ~PHI1reg & PHI0seen & PHI1seen) ? 4'h1 : 
			S==4'h0 ? 4'h0 :
			S==4'hF ? 4'hF : S+1;
			
		// Refresh counter allows DRAM refresh once every 8 cycles
		if (S==4'h1) Ref <= Ref+1;
	end

	always @(posedge C14M) begin
		CKE <= 1'b1;
		if (S==4'h0) begin
			if (InitS == 2'h1) begin
				// Set Mode Register
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b0;
			end else begin
				// NOP
				nCS <= 1'b1;
				nRAS <= 1'bX;
				nCAS <= 1'bX;
				nRWE <= 1'bX;
			end
			InitS <= InitS==2'h3 ? 2'h3 : InitS+1;

			// Mode register contents
			BA[1:0] <= 2'b00;			// Reserved
			RAH[11:10] <= 2'b00;		// Reserved
			RAH[9] <= 1'b1;			// "1" for single write mode
			RAH[8] <= 1'b0;			// Reserved
			RowA[7] <= 1'b0;			// "0" for not test mode
			RowA[6:4] <= 3'b010;		// "2" for CAS latency 2
			RowA[3] <= 1'b0;			// "0" for sequential burst (not used)
			RowA[2:0] <= 3'b000;		// "0" for burst length 1 (no burst)
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h1) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h2) begin
			// Activate
			nCS <= 1'b0;
			nRAS <= 1'b0;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// SDRAM bank 0, don't care RAH
			BA <= 2'b00;
			RAH[11:8] <= 4'b0000;
			// Make RA[7:0] transparent (show async. column)
			RATransp <= 1'b1;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h3) begin
			// Read
			nCS <= 1'b0;
			nRAS <= 1'b1;
			nCAS <= 1'b0;
			nRWE <= 1'b1;

			// SDRAM bank 0, RAH 0
			BA <= 2'b00;
			RAH[11:8] <= 4'b0100; // (A10 set to auto-precharge)
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Read low byte (high byte is +4MB in ramworks)
			DQML <= 1'b0;
			DQMH <= 1'b1;
		end else if (S==4'h4) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Read low byte (high byte +4MB in ramworks)
			DQML <= 1'b0;
			DQMH <= 1'b1;
		end else if (S==4'h5) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Read low byte (high byte +4MB in ramworks)
			DQML <= 1'b0;
			DQMH <= 1'b1;
		end else if (S==4'h6) begin
			// Auto-refresh
			nCS <= 1'b0;
			nRAS <= 1'b0;
			nCAS <= 1'b0;
			nRWE <= 1'b1;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;

			// Latch video data
			Vout[7:0] <= RD[7:0];
		end else if (S==4'h7) begin
			// Activate
			nCS <= 1'b0;
			nRAS <= 1'b0;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// SDRAM bank, RAH determine by RamWorks bank
			BA <= RWBank[5:4];
			RAH[11:8] <= RWBank[3:0];
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;

			// Latch row address for next CPU access
			RowA <= Ain;
		end else if (S==4'h8) begin
			// Read/Write
			nCS <= 1'b0;
			nRAS <= 1'b1;
			nCAS <= 1'b0;
			nRWE <= nWE80;

			// SDRAM bank still determined by RamWorks, RAH 0
			BA <= RWBank[5:4];
			RAH[11:8] <= 4'b0100; // (A10 set to auto-precharge)
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];
		end else if (S==4'h9) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];
		end else if (S==4'hA) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];

			// Latch RAMWorks bank if accessed
			if (~nC07X & ~nWE & RowA[0] & ~RowA[3]) RWBank <= Din;
		end else if (S==4'hB) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;

			// Latch read data 
			Dout[7:0] <= RD[7:0];
		end else if (S==4'hC) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'hD) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'hE) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
			
			// Latch row address for next video read
			RowA <= Ain;
		end else if (S==4'hF) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'bX;
			nCAS <= 1'bX;
			nRWE <= 1'bX;

			// Don't care bank, RAH
			BA <= 2'bXX;
			RAH[11:8] <= 4'bXXXX;
			// Make RA[7:0] nontransparent (show reg. row)
			RATransp <= 1'b0;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
			
			// Latch row address for next video read
			RowA <= Ain;
		end 
	end
endmodule
