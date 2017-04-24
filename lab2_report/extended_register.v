`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: hau tao
// 
// Create Date:    14:03:41 11/07/2015 
// Module Name:    extended_register 

//////////////////////////////////////////////////////////////////////////////////
module extended_register( input [15:0] unextended_signal, output reg[31:0] extended_signal
    );
	 always@*
	 begin 
	  extended_signal <= $signed(unextended_signal);
	 end
endmodule
