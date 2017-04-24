`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:   18:08:26 10/07/2015
// Design Name:   INCR
////////////////////////////////////////////////////////////////////////////////


module test();
// Port Wires
    wire[31:0] IncrOut;
    
// register declaration
    reg [31:0] A;
    INCR incr1(IncrOut, A);
    
    initial begin
    #10
    A = 3;
    
    #10
    A= 15;
    
    #10
    A = 64;
	 
    
    #5;
    
    end
    
    always @(A)
    #1 $display("Time = %0d\tA =%0d\tincrOut=%0d", $time, A, IncrOut);
    
endmodule //test


