`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau Tao
// 
// Create Date:    11:18:57 11/25/2015 
//////////////////////////////////////////////////////////////////////////////////
module The_EX_stage(
	input  [1:0]  ctlwb_out,
	input [2:0]  ctlm_out,
	input [31:0]  adder_out,
	input    aluzero,
	input  [31:0]  alu_out,
	input  [31:0]  readdat2,
	input  [4:0]  mux_out,
	
	output reg[1:0]  wb_ctlout,
	output reg [2:0]  m_ctlout,
	output reg [31:0] add_result, 
	output reg   	    zero,
	output reg [31:0] alu_result, 
	output reg [31:0] rdata2out, 
	output reg [4:0]  five_bit_muxout
    );
	 
    
	 
	 always @*
     begin
     #5  // clock cycle of the latch
         wb_ctlout <= ctlwb_out;
			m_ctlout  <= ctlm_out;
			add_result <= adder_out;
			zero   <= aluzero;
			alu_result <= alu_out;
			rdata2out <= readdat2;
			five_bit_muxout<= mux_out;
			
     end

endmodule
