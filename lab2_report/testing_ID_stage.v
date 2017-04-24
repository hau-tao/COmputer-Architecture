`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:56 11/13/2015
// Design Name:   final_ID_stage
// Module Name:   /home/hau/Desktop/labcse401/lab2/ID_stage/testing_ID_stage.v
// Project Name:  ID_stage
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: final_ID_stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testing_ID_stage;

	// Inputs
	reg [31:26] IR_control;
	reg [31:0] npc_in;
	reg [25:21] IR_reg1;
	reg [20:16] IR_reg2;
	reg [15:0] unextended_bit;
	reg [20:16] IR_mux0;
	reg [15:11] IR_mux1;
	reg WB;
	reg [31:0] mux_output_MEM_WB;
	reg [4:0] MEM_WB;

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
	final_ID_stage uut (
		.IR_control(IR_control), 
		.npc_in(npc_in), 
		.IR_reg1(IR_reg1), 
		.IR_reg2(IR_reg2), 
		.unextended_bit(unextended_bit), 
		.IR_mux0(IR_mux0), 
		.IR_mux1(IR_mux1), 
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

	initial begin
		// Initialize Inputs
		IR_control = 0;
		npc_in = 0;
		IR_reg1 = 0;
		IR_reg2 = 0;
		unextended_bit = 0;
		IR_mux0 = 0;
		IR_mux1 = 0;
		WB = 0;
		mux_output_MEM_WB = 0;
		MEM_WB = 0;

		// Wait 100 ns for global reset to finish
		// Wait 100 ns for global reset to finish
		#10
		IR_control = 6'b000000;
		npc_in = 2;
		IR_reg1 = 0;
		IR_reg2 = 2;
		unextended_bit = 16'b1010111111101100;
		IR_mux0 = 9;
		IR_mux1 = 10;
		WB = 1;
		MEM_WB = 2;
		mux_output_MEM_WB = 5;
        
		// Add stimulus here

	end
      
endmodule

