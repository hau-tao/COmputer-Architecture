`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer:Hau Tao
//
// Create Date:   15:49:27 11/12/2015
// Design Name:   ID_latch
// Module Name:   /home/hau/Desktop/labcse401/lab2/ID_stage/test_ID.v
////////////////////////////////////////////////////////////////////////////////

module test_ID;

	// Inputs
	reg [1:0] ctlwb_out;
	reg [2:0] ctlm_out;
	reg [3:0] ctlex_out;
	reg [31:0] npc;
	reg [31:0] readdat1;
	reg [31:0] readdat2;
	reg [31:0] signext_out;
	reg [4:0] instr_2016;
	reg [4:0] instr_1511;

	// Outputs
	wire [1:0] wb_ctlout;
	wire [2:0] m_ctlout;
	wire [3:0] ex_ctlout;
	wire [31:0] npcout;
	wire [31:0] rdata1out;
	wire [31:0] rdata2out;
	wire [31:0] s_extendout;
	wire [4:0] instrout_2016;
	wire [4:0] instrout_1511;

	// Instantiate the Unit Under Test (UUT)
	ID_latch uut (
		.ctlwb_out(ctlwb_out), 
		.ctlm_out(ctlm_out), 
		.ctlex_out(ctlex_out), 
		.npc(npc), 
		.readdat1(readdat1), 
		.readdat2(readdat2), 
		.signext_out(signext_out), 
		.instr_2016(instr_2016), 
		.instr_1511(instr_1511), 
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

	initial begin
		// Initialize Inputs
		ctlwb_out = 0;
		ctlm_out = 0;
		ctlex_out = 0;
		npc = 0;
		readdat1 = 0;
		readdat2 = 0;
		signext_out = 0;
		instr_2016 = 0;
		instr_1511 = 0;

		// Wait 10 ns for global reset to finish
		
		#10
		ctlwb_out = 1;
		ctlm_out = 2;
		ctlex_out = 3;
		npc = 4;
		readdat1 = 5;
		readdat2 = 6;
		signext_out =7;
		instr_2016 = 8;
		instr_1511 = 9;
		
		//#10;
		//$finish;
		end
     

	
      
endmodule

	