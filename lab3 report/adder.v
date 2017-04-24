`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// 
// Create Date:    09:35:04 11/16/2015 
// Module Name:    adder 
//////////////////////////////////////////////////////////////////////////////////
module adder( input [31:0] add_in1, input[31:0] add_in2, output reg[31:0] add_out
    );
	 always @ *
	 begin 
	 add_out = add_in1 + add_in2;
	 end


endmodule
