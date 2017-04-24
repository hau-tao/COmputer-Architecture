`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
//
// Create Date:   18:21:21 11/25/2015
// Design Name:   The_EX_stage
// Module Name:   /home/hau/Desktop/lab3/testing_EX_latch.v
////////////////////////////////////////////////////////////////////////////////

module testing_EX_latch;

	// Inputs
	reg [1:0] ctlwb_out;
	reg [2:0] ctlm_out;
	reg [31:0] adder_out;
	reg aluzero;
	reg [31:0] alu_out;
	reg [31:0] readdat2;
	reg [4:0] mux_out;

	// Outputs
	wire [1:0] wb_ctlout;
	wire [2:0] m_ctlout;
	wire [31:0] add_result;
	wire zero;
	wire [31:0] alu_result;
	wire [31:0] rdata2out;
	wire [4:0] five_bit_muxout;

	// Instantiate the Unit Under Test (UUT)
	The_EX_stage uut (
		.ctlwb_out(ctlwb_out), 
		.ctlm_out(ctlm_out), 
		.adder_out(adder_out), 
		.aluzero(aluzero), 
		.alu_out(alu_out), 
		.readdat2(readdat2), 
		.mux_out(mux_out), 
		.wb_ctlout(wb_ctlout), 
		.m_ctlout(m_ctlout), 
		.add_result(add_result), 
		.zero(zero), 
		.alu_result(alu_result), 
		.rdata2out(rdata2out), 
		.five_bit_muxout(five_bit_muxout)
	);

	initial begin
		// Initialize Inputs
		ctlwb_out = 0;
		ctlm_out = 0;
		adder_out = 0;
		aluzero = 0;
		alu_out = 0;
		readdat2 = 0;
		mux_out = 0;

		
		
		#10
		ctlwb_out = 1;
		ctlm_out = 2;
		adder_out = 3;
		aluzero = 0;
		alu_out = 5;
		readdat2 = 6;
		mux_out = 7;
        
		

	end
      
endmodule

