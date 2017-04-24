`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
// 
// Create Date:    11:37:10 11/25/2015 
// Design Name: 
// Module Name:    EX_stage_combination 
//////////////////////////////////////////////////////////////////////////////////
module EX_stage_combination(
	input  [1:0]  wb_ctlout,
	input  [2:0]  m_ctlout,
	input  [3:0]  ex_ctlout,
	input  [31:0]  npcout,
	input  [31:0]  rdata1out,
	input  [31:0]  rdata2out,
	input  [31:0]  s_extendout,
	input  [4:0]  instrout_2016,
	input  [4:0]  instrout_1511,
	
	output wire [1:0]  EX_MEM_wb_ctlout,
	output wire [2:0]  EX_MEM_m_ctlout,
	output wire [31:0] EX_MEM_add_result, 
	output wire   	    EX_MEM_zero,
	output wire [31:0] EX_MEM_alu_result, 
	output wire [31:0] EX_MEM_rdata2out, 
	output wire [4:0]  EX_MEM_five_bit_muxout
    );
	wire [4:0] mux_5bit_output;
	wire [31:0] mux_32bit_output;
	wire [2:0] alu_input;
	wire alu_zero_output;
	wire [31:0] alu_result_output;
	wire [31:0] adder_output;
	 
	 mux_32bit my_mux_32bit (
		.a(s_extendout), 
		.b(rdata2out), 
		.sel(ex_ctlout[0]), 
		.y(mux_32bit_output)
	);
	
	mux_EX my_mux_EX_5bit (
		.a(instrout_1511), 
		.b(instrout_2016), 
		.sel(ex_ctlout[3]), 
		.y(mux_5bit_output)
	);
	ALU_control_unit my_alu_control_unit (
		.function_bit(s_extendout[5:0]), 
		.ALUop(ex_ctlout[2:1]), 
		.select(alu_input)
	);
	alu my_alu (
		.A(rdata1out), 
		.B(mux_32bit_output), 
		.control(alu_input), 
		.zero(alu_zero_output), 
		.result(alu_result_output)
	);
	adder my_adder (
		.add_in1(npcout), 
		.add_in2(s_extendout), 
		.add_out(adder_output)
	);
	The_EX_stage EX_register (
		.ctlwb_out(wb_ctlout), 
		.ctlm_out(m_ctlout), 
		.adder_out(adder_output), 
		.aluzero(alu_zero_output), 
		.alu_out(alu_result_output), 
		.readdat2(rdata2out), 
		.mux_out(mux_5bit_output), 
		.wb_ctlout(EX_MEM_wb_ctlout), 
		.m_ctlout(EX_MEM_m_ctlout), 
		.add_result(EX_MEM_add_result), 
		.zero(EX_MEM_zero), 
		.alu_result(EX_MEM_alu_result), 
		.rdata2out(EX_MEM_rdata2out), 
		.five_bit_muxout(EX_MEM_five_bit_muxout)
	);
	
endmodule
