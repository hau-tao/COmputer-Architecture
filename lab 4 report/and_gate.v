`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
// 
// Create Date:    13:48:16 12/06/2015 
// Design Name: 
// Module Name:    and_gate 
//////////////////////////////////////////////////////////////////////////////////
module and_gate( input zero, input branch, output reg PCSrc
    );
	 always @*
	 begin
	 PCSrc = branch & zero;
	 end


endmodule
