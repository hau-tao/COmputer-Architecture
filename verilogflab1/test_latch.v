`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
//
// Create Date:   22:18:47 10/27/2015
// Design Name:   latch
////////////////////////////////////////////////////////////////////////////////

module test_latch;

	// Inputs
	reg [31:0] npc;
	reg [31:0] instr;

	// Outputs
	wire [31:0] npcout;
	wire [31:0] instrout;

	// Instantiate the Unit Under Test (UUT)
	latch uut (
		.npc(npc), 
		.instr(instr), 
		.npcout(npcout), 
		.instrout(instrout)
	);

	initial begin
		// Initialize Inputs
		npc = 0;
		instr = 0;
		
		#10
		npc <= 10;
		instr <= 12;
		#10;
		$finish;
		end
		

		// Wait 10 ns for global reset to finish
		
		always @*
		begin
		#1 $display("Time = %0d\tnpc =%0d\tinstr=%0d\t npcout=%0d\t instrout=%0d", $time, npc, instr, npcout, instrout);
       end
		

	
      
endmodule

