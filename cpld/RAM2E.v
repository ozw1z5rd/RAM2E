module RAM2E(C14M, PHI1, 
			 nWE, nWE80, nEN80, nC07X,
			 Ain, Din, Dout, nDOE, Vout, nVOE,
			 CKE, nCS, nRAS, nCAS, nRWE,
			 BA, RA, RD, DQML, DQMH,
			 DelayOut, DelayIn,
			 n8MEGEN, nRWKSEN);

	/* Clocks */
	input C14M, PHI1;
	
	/* Jumpers */
	input n8MEGEN, nRWKSEN;
	
	/* Control inputs */
	input nWE, nWE80, nEN80, nC07X;
	
 	/* Delay */
	output DelayOut = ~nEN80;
	input DelayIn;
	wire EN80 = DelayIn;
	
	/* Address Bus */
	input [7:0] Ain; // Multuplexed address input
	reg RWRowAddr = 0;
	
	/* 6502 Data Bus */
	input [7:0] Din;
	output nDOE = ~(EN80 & nWE);
	output reg [7:0] Dout;
	
	/* Video Data Bus */
	output nVOE = PHI1;
	output reg [7:0] Vout;
	
	/* RAMWorks Bank Register */
	reg [7:0] RWBank = 0;
	
	/* SDRAM */
	output CKE = 1;
	output reg nCS = 1, nRAS = 1, nCAS = 1, nRWE = 1;
	output reg [1:0] BA;
	output reg [11:0] RA;
	output reg DQML = 1, DQMH = 1;
	wire RDOE = EN80 & ~nWE80;
	inout [7:0] RD = RDOE ? Din[7:0] : 8'bZ;

	/* State Counters */
	reg PHI1reg = 0; // Saved PHI1 at last rising clock edge
	reg Ready = 0;
	reg [3:0] S = 0; // State counter
	reg [11:0] Ref = 0; // Refresh counter (also counts init states)

	always @(posedge C14M) begin
		// Synchronize state counter to S1 when just entering PHI1
		PHI1reg <= PHI1; // Save old PHI1
		S <= (PHI1 & ~PHI1reg & Ready) ? 4'h1 : 
			S==4'h0 ? 4'h0 :
			S==4'hF ? 4'hF : S+1;
	end

	always @(posedge C14M) begin
		Ref <= Ref+1;
		if (S==4'h0) begin
			if (Ref == 12'hFD0) begin
				// Precharge All
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b1;
				nRWE <= 1'b0;
				RA[10] <= 1'b1;		// "all"
			end else if (Ref == 12'hFE0) begin
				// Set Mode Register
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b0;
				RA[10] <= 1'b0;		// Reserved in mode register
			end else if (Ref[11:4] == 8'hC0) begin // repeat 16 times
				// Auto-refresh
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b1;
				RA[10] <= 1'b0;
			end else begin // Otherwise send no-op
				// NOP
				nCS <= 1'b1;
				nRAS <= 1'b1;
				nCAS <= 1'b1;
				nRWE <= 1'b1;
				RA[10] <= 1'b0;
			end
			if (Ref == 12'hC10) Ready <= 1'b1;

			// Mode register contents
			BA[1:0] <= 2'b00;		// Reserved
			RA[11] <= 1'b0;			// Reserved
			// RA[10] set above ^
			RA[9] <= 1'b1;			// "1" for single write mode
			RA[8] <= 1'b0;			// Reserved
			RA[7] <= 1'b0;			// "0" for not test mode
			RA[6:4] <= 3'b010;		// "2" for CAS latency 2
			RA[3] <= 1'b0;			// "0" for sequential burst (not used)
			RA[2:0] <= 3'b000;		// "0" for burst length 1 (no burst)

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h1) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h2) begin
			// Activate
			nCS <= 1'b0;
			nRAS <= 1'b0;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// SDRAM bank 0, don't care RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;
			// Row address is as previously latched

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h3) begin
			// Read
			nCS <= 1'b0;
			nRAS <= 1'b1;
			nCAS <= 1'b0;
			nRWE <= 1'b1;

			// SDRAM bank 0, RA[11,9:8] don't care
			BA <= 2'b00;
			RA[11] <= 1'b0;
			RA[10] <= 1'b1; // (A10 set to auto-precharge)
			RA[9] <= 1'b0;
			RA[8] <= 1'b0;
			// Latch column address for read command
			RA[7:0] <= Ain[7:0];

			// Read low byte (high byte is +4MB in ramworks)
			DQML <= 1'b0;
			DQMH <= 1'b1;
		end else if (S==4'h4) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Read low byte (high byte is +4MB in ramworks)
			DQML <= 1'b0;
			DQMH <= 1'b1;
		end else if (S==4'h5) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h6) begin
			if (Ref[6:4]==0) begin
				// Auto-refresh
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b1;
			end else begin
				// NOP
				nCS <= 1'b1;
				nRAS <= 1'b1;
				nCAS <= 1'b1;
				nRWE <= 1'b1;
			end

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h7) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;
			// Latch row address for activate command
			RA[7:0] <= Ain[7:0];
			// Latch RAMWorks low nybble write select
			RWRowAddr <= Ain[0] & ~Ain[3] & ~nWE;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h8) begin
			// Activate
			nCS <= 1'b0;
			nRAS <= 1'b0;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// SDRAM bank, RA[11:8] determine by RamWorks bank
			BA <= RWBank[5:4];
			RA[11:8] <= RWBank[3:0];
			// Row address is as previously latched

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h9) begin
			// Read/Write
			nCS <= 1'b0;
			nRAS <= 1'b1;
			nCAS <= 1'b0;
			nRWE <= nWE80;

			// SDRAM bank still determined by RamWorks, RA[11,9:8] don't care
			BA <= RWBank[5:4];
			RA[11] <= 1'b0;
			RA[10] <= 1'b1; // (A10 set to auto-precharge)
			RA[9] <= 1'b0;
			RA[8] <= 1'b0; // RWBank[7];
			// Latch column address for R/W command
			RA[7:0] <= Ain[7:0];

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];
		end else if (S==4'hA) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];
		end else if (S==4'hB) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;

			// Latch RAMWorks bank if accessed
			if (~nC07X & RWRowAddr) begin
				RWBank <= 
					nRWKSEN ? 0 :
					n8MEGEN ? Din[5:0] :
					Din[7:0];
			end
		end else if (S==4'hC) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'hD) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'hE) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;
			// Latch row address for next video read
			RA[7:0] <= Ain[7:0];

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'hF) begin
			// NOP
			nCS <= 1'b1;
			nRAS <= 1'b1;
			nCAS <= 1'b1;
			nRWE <= 1'b1;

			// Don't care bank, RA[11:8]
			BA <= 2'b00;
			RA[11:8] <= 4'b0000;
			// Latch row address for next video read
			RA[7:0] <= Ain[7:0];

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end 
	end

	always @(negedge C14M) begin
		// Latch video and read data outputs
		if (S==4'h6) Vout[7:0] <= RD[7:0];
		if (S==4'hC) Dout[7:0] <= RD[7:0];
	end
endmodule
