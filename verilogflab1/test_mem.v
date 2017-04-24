`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
//
// Create Date:   10:50:19 10/21/2015
// Design Name:   instruction_memory
////////////////////////////////////////////////////////////////////////////////
module test_mem;
    // Inputs
    reg [31:0] in;
    // Outputs
    wire [31:0] out;
    reg[31:0]words[0:127];
    // Instantiate the Unit Under Test (UUT)
    instruction_memory uut (
        .data(out),
        .address(in)
    );
    initial begin
        // Initialize Inputs
        #1
        words[0] = 'hA00000AA;
        in= 0;
        
        // Wait 10 ns for global reset to finish
        #10
        //address = 'h10000011;
        words[1] = 'h10000011;
        in = 1;
        #10
        words[2] = 'h20000022;
        in = 2;
        //address = 'h20000022;
        
        // Add stimulus here

    end
    always@(words or in )
    #1 $display("Time = %0d\tin=%0h\tdata=%0h", $time, in, out);     
endmodule
