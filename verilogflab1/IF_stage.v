`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:13 10/27/2015 
// Design Name: 
// Module Name:    IF_stage 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IF_stage(input  PCSrc, input [31:0] EX_MEM, output wire[31:0] npcout, output wire[31:0] instrout
    );
	 wire [31:0] mux_out;
	 wire [31:0] pc_output;
	 wire [31:0] mem_data_out;
	 wire [31:0] output_incrementer;
	
	 
	 MUX  mux1(.a(EX_MEM), .b(output_incrementer), .sel(PCSrc), .y(mux_out));
	 INCR increment1(.pcout(output_incrementer), .pcin(pc_output));
	 instruction_memory mem1(.data(mem_data_out),.address(pc_output));
	 programCounter pc1(.npc(mux_out),.pc(pc_output));
	
	 
	 latch latch1(
		.npc(output_incrementer), 
		.instr(mem_data_out), 
		.npcout(npcout), 	
		.instrout(instrout)
	);

endmodule
