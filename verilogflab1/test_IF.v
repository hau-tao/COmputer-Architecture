
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:   17:38:46 10/21/2015
// Design Name:   IF_stage
////////////////////////////////////////////////////////////////////////////////

module test_IF;

	// Inputs
	reg PCSrc;
	reg [31:0] EX_MEM;

	// Outputs
	wire [31:0] npcout;
	wire [31:0] instrout;

	// Instantiate the Unit Under Test (UUT)
	IF_stage uut (
		.PCSrc(PCSrc), 
		.EX_MEM(EX_MEM), 
		.npcout(npcout), 
		.instrout(instrout)
	);

	initial begin
		// Initialize Inputs
		PCSrc = 0;
		EX_MEM = 0;

		// Wait 100 ns for global reset to finish
		#6
		PCSrc = 1;
		EX_MEM =1;
		#15
		PCSrc = 1;
		EX_MEM =2;
		
		
	end
	always @(*)
		begin
		#1 $display("Time = %0d\tPCSrc =%0d\tEX_MEM=%0d\tnpcout=%0d\tinstrout=%0h\t", $time, PCSrc,EX_MEM,npcout,instrout);
		
		end
      
endmodule


