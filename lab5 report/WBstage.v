`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
// 
// Create Date:    15:13:33 12/06/2015 
// Design Name: 
// Module Name:    WBstage 
//////////////////////////////////////////////////////////////////////////////////
module WBstage(input[1:0] MEM_WB,input[31:0] mem_Read_data, input[31:0] mem_ALU_result, output wire[31:0] wb_data
    );
	 wire regWrite ;
	 assign regWrite = MEM_WB[1];
	 mux_32bit mux_1 (
		.a(mem_Read_data), 
		.b(mem_ALU_result), 
		.sel(MEM_WB[0]), 
		.y(wb_data)
	);


endmodule
