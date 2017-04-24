`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
//
// Create Date:   14:35:07 11/07/2015
// Design Name:   control_bit
// Module Name:   /home/hau/Desktop/labcse401/lab2/ID_stage/test_control_bit.v
// Project Name:  ID_stage
////////////////////////////////////////////////////////////////////////////////

module test_control_bit;

	// Inputs
	reg [5:0] opcode;

	// Outputs
	wire [3:0] EX;
	wire [2:0] MEM;
	wire [1:0] WB;

	// Instantiate the Unit Under Test (UUT)
	control_bit uut (
		.opcode(opcode), 
		.EX(EX), 
		.MEM(MEM), 
		.WB(WB)
	);

	initial begin
		// Initialize Inputs
		opcode = 6'b000000;
	#2 opcode = 6'b100011;
	#4 opcode = 6'b101011;
	#6 opcode = 6'b000100;
	end
	
	always @*
	begin
	#2 $display("Time = %0d\t opcode =%0b\t EX=%0b\t MEM=%0b\t WB=%0b\t", $time, opcode, EX, MEM, WB);
	#4 $display("Time = %0d\t opcode =%0b\t EX=%0b\t MEM=%0b\t WB=%0b\t", $time, opcode, EX, MEM, WB);
	#6 $display("Time = %0d\t opcode =%1b\t EX=%0b\t MEM=%0b\t WB=%1b\t", $time, opcode, EX, MEM, WB);
	
	end
      
endmodule

 