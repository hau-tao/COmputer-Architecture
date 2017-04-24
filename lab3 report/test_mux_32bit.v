`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
//
// Create Date:   11:13:30 11/25/2015
// Design Name:   mux_32bit
// Module Name:   /home/hau/Desktop/lab3/test_mux_32bit.v
// Project Name:  lab3
////////////////////////////////////////////////////////////////////////////////

module test_mux_32bit;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg sel;

	// Outputs
	wire [31:0] y;

	// Instantiate the Unit Under Test (UUT)
	mux_32bit uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.y(y)
	);

	initial begin
    a = 32'b01010;
    b = 32'b10101;
    sel = 1'b1;
    #10;
    a = 32'b00000;
    #10
    sel = 1'b1;
    #10;
    b = 32'b11111;
    #5;
    a= 32'b00101;
    #5;
    sel = 1'b0;
    b = 32'b11101;
	 #5;
	 sel = 1'bx;
    end
	  always @(a or b or sel)

    #1 $display("At t = %0d sel =%b a =%b b=%b y=%b",$time, sel, a, b, y);

      
endmodule

