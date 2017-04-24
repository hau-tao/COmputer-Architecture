`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:   11:27:34 11/23/2015
// Design Name:   ALU_control_unit
// Project Name:  lab3
////////////////////////////////////////////////////////////////////////////////

module test_alu_control_unit;

	// Inputs
	reg [5:0] function_bit;
	reg [1:0] ALUop;

	// Outputs
	wire [2:0] select;

	// Instantiate the Unit Under Test (UUT)
	ALU_control_unit uut (
		.function_bit(function_bit), 
		.ALUop(ALUop), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		function_bit = 6'b100000;
		ALUop = 2'b00;
		$monitor("ALUop =%b\t function_bit =%b\tselect=%b", ALUop, function_bit, select);
		
		#1
		ALUop = 2'b01;
		function_bit = 6'b100000;
		#1
		ALUop = 2'b10;
		function_bit = 6'b100000;
		#1
		function_bit = 6'b100010;
		#1
		function_bit = 6'b100100;
		#1
		function_bit = 6'b100101;
		#1
		function_bit = 6'b101010;
		#1
		$finish;
		end
		
endmodule

