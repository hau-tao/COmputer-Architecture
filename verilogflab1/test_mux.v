`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:   17:51:21 10/07/2015
// Project Name:  mux_1
////////////////////////////////////////////////////////////////////////////////

module test_mux;

    // Verilog Test Fixture Template
    //wire ports
    wire[31:0] Y;
    //register Declarations
    reg[31:0] A, B;
    reg sel;
    MUX mux1 (A, B, sel, Y);
    initial begin
    A = 32'hAAAAAAAA;
    B = 32'h55555555;
    sel = 1'b1;
    #10;
    A = 32'h00000000;
    #10
    sel = 1'b1;
    #10;
    B = 32'hFFFFFFFF;
    #5;
    A= 32'hA5A5A5A5;
    #5;
    sel = 1'b0;
    B = 32'hDDDDDDDD;
    end
    
    always @(A or B or sel)

    #1 $display("At t = %0d sel =%b A =%h B=%h Y=%h",$time, sel, A, B, Y);

endmodule

