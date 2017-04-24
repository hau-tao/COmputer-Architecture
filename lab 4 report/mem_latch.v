`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
// 
// Create Date:    14:01:42 12/06/2015 
// Design Name: 
// Module Name:    mem_latch 
//////////////////////////////////////////////////////////////////////////////////
module mem_latch(input [1:0] control_wb_in, input[31:0] Read_data_in, input[31:0] ALU_result_in, input[4:0] Write_reg_in,
output reg[1:0]mem_control_wb, output reg[31:0]Read_data, output reg[31:0]mem_ALU_result, output reg[4:0] mem_Write_reg 
    );
	 
	  always @*
     begin
     #5  // clock cycle of the latch
         mem_control_wb <= control_wb_in;
			Read_data  <= Read_data_in;
			mem_ALU_result <= ALU_result_in;
			mem_Write_reg   <= Write_reg_in;

			
     end

endmodule
