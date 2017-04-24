`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
//
// Create Date:   09:59:42 11/16/2015
// Design Name:   mux_EX
// Module Name:   /home/hau/Desktop/lab3/test_mux_EX.v
////////////////////////////////////////////////////////////////////////////////

module test_mux_EX;

	// Inputs
	reg [4:0] a;
	reg [4:0] b;
	reg sel;

	// Outputs
	wire [4:0] y;

	// Instantiate the Unit Under Test (UUT)
	mux_EX uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.y(y)
	);

	initial begin
    a = 5'b01010;
    b = 5'b10101;
    sel = 1'b1;
    #10;
    a = 5'b00000;
    #10
    sel = 1'b1;
    #10;
    b = 5'b11111;
    #5;
    a= 5'b00101;
    #5;
    sel = 1'b0;
    b = 5'b11101;
	 #5;
	 sel = 1'bx;
    end
	  always @(a or b or sel)

    #1 $display("At t = %0d sel =%b a =%b b=%b y=%b",$time, sel, a, b, y);
    
      
endmodule

