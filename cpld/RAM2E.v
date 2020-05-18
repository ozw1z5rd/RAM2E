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
	
	/* Address Bus */
	input [7:0] Ain; // Multuplexed address input
	reg RWSel = 0;
	
	/* 6502 Data Bus */
	input [7:0] Din;
	output nDOE = ~(EN80 & nWE);
	output reg [7:0] Dout;
	
	/* Video Data Bus */
	output nVOE = PHI1 | ~Ready;
	output reg [7:0] Vout;
	
	/* RAMWorks Bank Register and Capacity Limit */
	reg [7:0] RWBank = 0;
	reg [7:0] RWMask = 0;
	reg RWMaskSet = 0;
	
	/* Command Sequence Detector */
	reg [2:0] CmdSeqS = 0;
	reg [3:0] CmdTimeout = 0;

	/* UFM Interface Registers */
	reg [7:0] UFMA = 0;
	reg [7:0] UFMD = 0;
	reg ARCLK = 0;
	reg ARDIn = 0;
	reg ARShift = 0;
	reg DRCLK = 0;
	reg DRDIn = 0;
	reg DRShift = 0;
	reg UFMErase = 0;
	reg UFMProgram = 0;
	wire UFMBusy;
	wire DRDOut;
	wire RTPBusy;
	UFM UFM_inst (
		.arclk (ARCLK),
		.ardin (ARDIn),
		.arshft (ARShift),
		.drclk (DRCLK),
		.drdin (DRDIn),
		.drshft (DRShift),
		.erase (UFMErase),
		.oscena (1'b0),
		.program (UFMProgram),
		.busy (UFMBusy),
		.drdout (DRDOut),
		.osc (UFMOsc),
		.rtpbusy (RTPBusy));
	reg UFMBusyReg = 0;
	reg RTPBusyReg = 0;
	reg DRDOutReg = 0;
	reg UFMInitDone = 0;
	reg UFMReqErase = 0;
	reg UFMBitbang = 0;
	reg UFMPrgmEN = 0;
	reg DoutSubstUFM = 0;

	/* SDRAM */
	output reg CKE = 0;
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
	reg [16:0] InitS = 0; // Init state counter

	always @(posedge C14M) begin
		// Synchronize state counter to S1 when just entering PHI1
		PHI1reg <= PHI1; // Save old PHI1
		S <= (PHI1 & ~PHI1reg & Ready) ? 4'h1 : 
			S==4'h0 ? 4'h0 :
			S==4'hF ? 4'hF : S+1;
	end

	always @(posedge C14M) begin
		// Synchronize asynchronous UFM signals
		UFMBusyReg <= UFMBusy;
		RTPBusyReg <= RTPBusy;
		DRDOutReg <= DRDOut;

		if (S==4'h0) begin
			// Read UFM to figure out capacity mask
			// UFM is read at 64 C14M cycles per 16-bit word
			// UFM clock at 7 MHz
			ARCLK <= InitS[0];
			DRCLK <= InitS[0];
			if (~InitS[0] & ~UFMInitDone) begin
				if (InitS[5:1]==5'h00) begin // Shift in A0
					ARDIn <= UFMA[0];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h01) begin // Shift in A1
					ARDIn <= UFMA[1];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h02) begin // Shift in A2
					ARDIn <= UFMA[2];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h03) begin // Shift in A3
					ARDIn <= UFMA[3];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h04) begin // Shift in A4
					ARDIn <= UFMA[4];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h05) begin // Shift in A5
					ARDIn <= UFMA[5];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h06) begin // Shift in A6
					ARDIn <= UFMA[6];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h07) begin // Shift in A7
					ARDIn <= UFMA[7];
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h08) begin // Shift in A8 (0)
					ARDIn <= 1'b0;
					ARShift <= 1'b1;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h09) begin // Read into UFM DR
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end else if (InitS[5:1]==5'h10) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h11) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h12) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h13) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h14) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h15) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h16) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b1;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h17) begin // Shift into our UFMD
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
					UFMD[7:0] <= {UFMD[6:0], DRDOut};
				end else if (InitS[5:1]==5'h1F) begin // Store and increment
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
					if (UFMD[7:0] == 8'hFF) begin // if byte is erased
						// Address currently in UFMA is where we want to store
						UFMInitDone <= 1'b1; // Quit iterating
					end else begin // if byte is valid
						// Set RAMWorks mask
						if (UFMD[7:0]==8'h80) RWMask[7:0] <= 8'hFF;
						else RWMask[7:0] <= UFMD[7:0];
						// If last byte in sector...
						UFMInitDone <= UFMA==8'hFF; // Quit iterating
						UFMReqErase <= UFMA==8'hFF; // Mark need to erase
						// Increment UFMA
						UFMA[7:0] <= UFMA+1;
					end
				end else begin
					ARDIn <= 1'b0;
					ARShift <= 1'b0;
					DRDIn <= 1'b0;
					DRShift <= 1'b0;
				end
			end

			// Don't erase or program UFM during initialization 
			UFMErase <= 1'b0;
			UFMProgram <= 1'b0;
		end else begin
			// UFM bitbang control
			if (UFMBitbang & CmdSeqS==3'h7 & RWSel & S==4'hC) begin
				ARCLK <= Din[0];
				ARDIn <= Din[1];
				ARShift <= Din[2];
				DRCLK <= Din[3];
				DRDIn <= Din[4];
				DRShift <= Din[5];
			end

			// Set capacity mask
			if (RWMaskSet & CmdSeqS==3'h7 & RWSel & S==4'hC) begin
				RWMask[7:0] <= Din[7:0];
			end

			// UFM programming sequence
			if (UFMPrgmEN) begin
				if (~UFMBusyReg & ~RTPBusyReg) begin
					if (UFMReqErase) UFMErase <= 1'b1;
					else UFMProgram <= 1'b1;
				end else if (UFMBusyReg) UFMReqErase <= 1'b0;
			end
		end
	end

	always @(posedge C14M) begin
		InitS <= InitS+1;
		if (S==4'h0) begin 
			// SDRAM initialization
			if (InitS==17'h1FFC8) begin
				// Precharge All
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b1;
				nRWE <= 1'b0;
				RA[10] <= 1'b1; // "precharge all"
			end else if (InitS[16:4]==13'h1FFD & ~InitS[0]) begin // Repeat 8x
				// Auto-refresh
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b1;
				RA[10] <= 1'b0;
			end else if (InitS==17'h1FFE8) begin
				// Set Mode Register
				nCS <= 1'b0;
				nRAS <= 1'b0;
				nCAS <= 1'b0;
				nRWE <= 1'b0;
				RA[10] <= 1'b0; // Reserved in mode register
			end else if (InitS[16:4]==13'h1FFF & ~InitS[0]) begin // Repeat 8x
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
			// Enable SDRAM clock after 130,816 cycles (~9.15ms)
			CKE <= InitS >= 17'h1FF00;

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

			// Begin normal operation after 128k init cycles (~9.15ms)
			if (InitS == 17'h1FFFF) Ready <= 1'b1;
		end else if (S==4'h1) begin
			// Enable clock
			CKE <= 1'b1;

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
			// Enable clock
			CKE <= 1'b1;
			
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
			// Enable clock
			CKE <= 1'b1;
			
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
			// Enable clock
			CKE <= 1'b1;
			
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
			// Enable clock
			CKE <= 1'b1;
			
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
			// Enable clock
			CKE <= 1'b1;
			
			if (InitS[6:4]==0) begin
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
			// Enable clock
			CKE <= 1'b1;
			
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

			// Mask everything
			DQML <= 1'b1;
			DQMH <= 1'b1;
		end else if (S==4'h8) begin
			// Enable clock
			CKE <= 1'b1;
			
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
			// Enable clock
			CKE <= 1'b1;
			
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
			RA[8] <= RWBank[7];
			// Latch column address for R/W command
			RA[7:0] <= Ain[7:0];

			// Latch RAMWorks low nybble write select using old row address
			RWSel <= RA[0] & ~RA[3] & ~nWE & ~nC07X;

			// If command sequence times out, reset command sequence state
			if (CmdTimeout <= 4'hF) CmdSeqS <= 0;

			// Mask according to RAMWorks bank (high byte is +4MB)
			DQML <= RWBank[6];
			DQMH <= ~RWBank[6];
		end else if (S==4'hA) begin
			// Enable clock
			CKE <= 1'b1;
			
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
			// Disable clock
			CKE <= 1'b0;
			
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
		end else if (S==4'hC) begin
			// Disable clock
			CKE <= 1'b0;
			
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

			// RAMWorks Bank Register Select
			if (RWSel) begin
				// Latch RAMWorks bank if accessed
				RWBank <= Din[7:0] & ~RWMask[7:0];
				
				// Recognize command sequence
				if ((Din[7:0]==8'h00 & CmdSeqS==3'h0) |
					 (Din[7:0]==8'hFF & CmdSeqS==3'h1) |
					 (Din[7:0]==8'h55 & CmdSeqS==3'h2) |
					 (Din[7:0]==8'hAA & CmdSeqS==3'h3) |
					 (Din[7:0]==8'hC1 & CmdSeqS==3'h4) |
					 (Din[7:0]==8'hAD & CmdSeqS==3'h5) |
					 CmdSeqS==3'h6 | CmdSeqS==3'h7) begin
					CmdSeqS <= CmdSeqS+1;
					CmdTimeout <= 0;
				end else CmdTimeout <= CmdTimeout+1;
				
				// Recognize and submit command byte
				if (CmdSeqS==3'h6) begin
					UFMPrgmEN <= Din[7:0]==8'h57;
					DoutSubstUFM <= Din[7:0]==8'hA3;
					UFMBitbang <= Din[7:0]==8'hA8;
					RWMaskSet <= Din[7:0]==8'hA0;
				end else begin
					DoutSubstUFM <= 1'b0;
				end

				// Reset command thingy
				if (CmdSeqS==3'h7) begin
					UFMBitbang <= 1'b0;
					RWMaskSet <= 1'b0;
				end
			end
		end else if (S==4'hD) begin
			// Disable clock
			CKE <= 1'b0;
			
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
			// Disable clock
			CKE <= 1'b0;
			
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
			// Disable clock
			CKE <= 1'b0;
			
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
		if (S==4'hC) begin 
			Dout[7] <= DoutSubstUFM ? DRDOutReg : RD[7];
			Dout[6:0] <= RD[6:0];
		end
	end
endmodule
