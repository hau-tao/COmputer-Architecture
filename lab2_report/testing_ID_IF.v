`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
//
// Create Date:   17:37:38 11/13/2015
// Design Name:   connectionID_IF
// Module Name:   /home/hau/Desktop/labcse401/connection_ID_IF/testing_ID_IF.v
////////////////////////////////////////////////////////////////////////////////

module testing_ID_IF;

	// Inputs
	reg PCSrc;
	reg [31:0] EX_MEM;
	reg WB;

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
	connectionID_IF uut (
		.PCSrc(PCSrc), 
		.EX_MEM(EX_MEM), 
		.WB(WB), 
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
		PCSrc = 0;
		EX_MEM = 0;
		WB = 0;

		// Wait 100 ns for global reset to finish
		#10;
		PCSrc = 1;
		EX_MEM = 1;
		WB = 1;
      
		// Add stimulus here

	end
      
endmodule

