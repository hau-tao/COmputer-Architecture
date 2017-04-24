`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
//
// Create Date:   14:16:05 12/06/2015
// Design Name:   mem_latch
// Module Name:   /home/hau/Desktop/lab4/test_mem_latch.v
// Project Name:  lab4
////////////////////////////////////////////////////////////////////////////////

module test_mem_latch;

	// Inputs
	reg [1:0] control_wb_in;
	reg [31:0] Read_data_in;
	reg [31:0] ALU_result_in;
	reg [4:0] Write_reg_in;

	// Outputs
	wire [1:0] mem_control_wb;
	wire [31:0] Read_data;
	wire [31:0] mem_ALU_result;
	wire [4:0] mem_Write_reg;

	// Instantiate the Unit Under Test (UUT)
	mem_latch uut (
		.control_wb_in(control_wb_in), 
		.Read_data_in(Read_data_in), 
		.ALU_result_in(ALU_result_in), 
		.Write_reg_in(Write_reg_in), 
		.mem_control_wb(mem_control_wb), 
		.Read_data(Read_data), 
		.mem_ALU_result(mem_ALU_result), 
		.mem_Write_reg(mem_Write_reg)
	);

	initial begin
		// Initialize Inputs
		control_wb_in = 0;
		Read_data_in = 0;
		ALU_result_in = 0;
		Write_reg_in = 0;

		// Wait 100 ns for global reset to finish
		#1;
		control_wb_in =1;
		Read_data_in = 2;
		ALU_result_in = 3;
		Write_reg_in = 4;

        
		// Add stimulus here

	end
      
endmodule

