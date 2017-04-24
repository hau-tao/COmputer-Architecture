`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:49 11/13/2015 
// Design Name: 
// Module Name:    connectionID_IF 
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

module connectionID_IF(input  PCSrc, input [31:0] EX_MEM, input WB,
		 output wire [1:0] wb_ctlout,
	    output wire [2:0] m_ctlout,
	    output wire[3:0] ex_ctlout,
	    output wire[31:0] npcout,
	    output wire[31:0] rdata1out,
	    output wire[31:0] rdata2out,
	    output wire [31:0] s_extendout,
	    output wire [4:0] instrout_2016,
	    output wire [4:0] instrout_1511

    );
	 wire [31:0] npcout_IF_ID;
	 wire [31:0] instrout_IF_ID;
	 

	
	IF_stage IF_1 (
		.PCSrc(PCSrc), 
		.EX_MEM(EX_MEM), 
		.npcout(npcout_IF_ID), 
		.instrout(instrout_IF_ID)
	);
	
	
	

	// Instantiate the Unit Under Test (UUT)

	final_ID_stage uut (
        .IR_control(instrout_IF_ID[31:26]),
        .npc_in(npcout_IF_ID),
        .IR_reg1(instrout_IF_ID[25:21]),
        .IR_reg2(instrout_IF_ID[20:16]),
        .unextended_bit(instrout_IF_ID[15:0]),
        .IR_mux0(instrout_IF_ID[20:16]),
        .IR_mux1(instrout_IF_ID[15:11]),
        .WB(WB),
        .mux_output_MEM_WB(mux_output_MEM_WB),
        .MEM_WB(MEM_WB),
        .wb_ctlout(wb_ctlout),
        .m_ctlout(m_ctlout),
        .ex_ctlout(ex_ctlout),
        .npcout(npcout),
        .rdata1out(rdata1out),
        .rdata2out(rdata2out),
        .s_extendout(s_extendout),
        .instrout_2016(instrout_2016),
        .instrout_1511(instrout_1511)
    );
	 
	 always@*
	 # 20 $display("time =%0d\t instrout_IF_ID=%0b\t, npcout_IF_ID=%0b\t", $time, instrout_IF_ID, npcout_IF_ID);



endmodule
