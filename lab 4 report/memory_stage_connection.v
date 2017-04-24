`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: hau tao
// 
// Create Date:    14:18:46 12/06/2015 
// Design Name: 
// Module Name:    memory_stage_connection 

//////////////////////////////////////////////////////////////////////////////////
module memory_stage_connection(input [1:0] control_wb_in, input [2:0] ex_mem_latch, input zero, input[31:0] ALU_result_in,
inout[31:0] To_mem_write_data, input[31:0] Write_reg_in, output wire[1:0]mem_control_wb,output wire[31:0] Read_data, output wire[31:0]mem_ALU_result,
output wire[4:0] mem_Write_reg
    );
	 wire PCSrc;
	 
	 wire [31:0] Read_data_in;
	 and_gate and_gate_1 (
		.zero(zero), 
		.branch(ex_mem_latch[2]), 
		.PCSrc(PCSrc)
	);
	data_mem data_mem_1 (
		.address(ALU_result_in), 
		.writedata(To_mem_write_data), 
		.memread(ex_mem_latch[1]), 
		.memwrite(ex_mem_latch[0]), 
		.readdata(Read_data_in)
	);
	mem_latch mem_latch_1 (
		.control_wb_in(control_wb_in), 
		.Read_data_in(Read_data_in), 
		.ALU_result_in(ALU_result_in), 
		.Write_reg_in(Write_reg_in), 
		.mem_control_wb(mem_control_wb), 
		.Read_data(Read_data), 
		.mem_ALU_result(mem_ALU_result), 
		.mem_Write_reg(mem_Write_reg)
	);
	


endmodule
