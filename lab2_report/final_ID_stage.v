`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao 
// Create Date:    16:23:46 11/12/2015  
// Module Name:    final_ID_stage 
//////////////////////////////////////////////////////////////////////////////////
module final_ID_stage(input[31:26] IR_control, input[31:0] npc_in, input[25:21] IR_reg1, input[20:16] IR_reg2, input[15:0] unextended_bit,
       input[20:16] IR_mux0, input[15:11] IR_mux1, input WB, input[31:0] mux_output_MEM_WB, input[4:0] MEM_WB,
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
	 
	 
	 wire [31:0] read_data_1;
	 wire [31:0] read_data_2;
	 wire [31:0] extended_signal_1;
	 wire [3:0] EX_out;
	 wire [2:0] MEM_out;
	 wire [1:0] WB_out;
	 register_file register1 (
		.reg_write(WB), 
		.rs(IR_reg1), 
		.rt(IR_reg2), 
		.rd(MEM_WB), 
		.write_data(mux_output_MEM_WB), 
		.A(read_data_1), 
		.B(read_data_2)
		);
		
	extended_register extended_register_1 (
		.unextended_signal(unextended_bit), 
		.extended_signal(extended_signal_1)
	);
	
	control_bit control_bit_1(
		.opcode(IR_control), 
		.EX(EX_out), 
		.MEM(MEM_out), 
		.WB(WB_out)
	);
	
	ID_latch ID_latch_1 (
		.ctlwb_out(WB_out), 
		.ctlm_out(MEM_out), 
		.ctlex_out(EX_out), 
		.npc(npc_in), 
		.readdat1(read_data_1), 
		.readdat2(read_data_2), 
		.signext_out(extended_signal_1), 
		.instr_2016(IR_mux0), 
		.instr_1511(IR_mux1), 
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
	

endmodule

