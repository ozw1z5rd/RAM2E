module RAM2E(C14M, C14M_2, C7M, Q3, PHI0, PHI1,
			 nPRAS, nPCAS, nWE, nWE80, nEN80,
			 nRAS, nCAS, nRWE,
			 VD, MD, RD, nC07X, MA, RA,
			 Q3_2, C3M58, AN3, nCASEN, XX73SEL,
			 DelayIn, DelayOut);

	// Control inputs
	input C14M, PHI0, PHI1, C7M, Q3;
	input nPRAS, nPCAS, nWE, nWE80, nEN80, nC07X;

	// Unused inputs
	input C14M_2, Q3_2, C3M58, AN3, nCASEN;

	// Delay
	input [3:0] DelayIn; output [3:0] DelayOut;
	assign DelayOut[0] = 0; // Not depending on mounting RC delay
	assign DelayOut[1] = nEN80;
	assign DelayOut[2] = DelayIn[1];
	assign DelayOut[3] = DelayIn[2];
	wire EN80 = ~DelayIn;

	// DRAM control
	output reg nRAS, nCAS, nRWE;

	// Address bus and bank address registers
	reg [4:0] BA = 0; // Bank address
	output reg [11:8] RA = 0; // High-order multiplexed DRAM address (output)
	input [7:0] MA; // Low-order multiplexed DRAM address (input, output by Apple II)
	output reg C073SEL = 0; // Bank register select

	// Data bus routing
	reg [7:0] VDR; // Registered video data
	wire VDOE = ~PHI1;
	inout [7:0] VD = VDOE ? VDR[7:0] : 8'bZ; // Video data
	wire MDOE = EN80 & nWE;
	inout [7:0] MD = MDOE ? RD[7:0] : 8'bZ; // 6502 data bus
	wire RDOE = EN80 & ~nWE;
	inout [7:0] RD = RDOE ? MD[7:0] : 8'bZ; // DRAM  data bus

	/* State Counters */
	reg PHI1reg = 0; // Saved PHI1 at last rising clock edge
	reg PHI0seen = 0; // Have we seen PHI0 since reset?
	reg [3:0] S = 0; // State counter
	reg [3:0] Ref = 0; // Refresh skip counter

	always @(posedge C14M) begin
		// Refresh counter allows DRAM refresh once every 13 cycles
		if (S==5'b10111) Ref <= (Ref[3:2]==2'b11) ? 4'h0 : Ref+1;
	
		// Synchronize state counter to S1 when just entering PHI1
		PHI1reg <= PHI1; // Save old PHI1
		if (~PHI1) PHI0seen <= 1; // PHI0seen set in PHI0
		S <= (PHI1 & ~PHI1reg & PHI0seen) ? 4'h1 : 
			S==0 ? 3'h0 :
			S==7 ? 3'h7 : S+1;

		nRAS <= ~(S==5'b01111 | S==5'b00011 | S==5'b01011 | 
				  (Ref==0 & S==5'b00000) |
				  S==5'b10111 | S==5'b11011 | S==5'b10011 | 
				  S==5'b11001 & ~nWE80); // write: hold RAS for late CAS

		nCAS <= ~(S==5'b01011 | 
				  (Ref==0 & (S==5'b01000 | S==5'b00000)) | 
				  (S==5'b10011 & nWE80) | // read: early CAS
				  (S==5'b11001 & ~nWE80)); // write: late CAS

		nRWE <= (S==5'b11011 | S==5'b10011 | S==5'b11001) ? nWE80 : 1'b1;

		if (S==5'b10111) XX73SEL <= MA[7:0] == 8'h73;
		if (S==5'b10000 & XX73SEL & ~nC07X & ~nWE) BA[4:0] <= MD[4:0];

		RA[11:8] <= (S==5'b11011 | S==5'b10011) ?
						{1'b0, 1'b0, BA[1], BA[0]} : // col
					(S==5'b01100 | S==5'b10111) ?
						{1'b0, BA[4], BA[3], BA[2]} : 4'b0; // row
		
		if (S==5'b00001) VDR[7:0] <= RD[7:0];
	end
endmodule
