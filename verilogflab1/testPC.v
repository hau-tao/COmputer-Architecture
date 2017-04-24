`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
//
// Create Date:    16:39:09 10/07/2015
// Module Name:    testPC
//////////////////////////////////////////////////////////////////////////////////
module testPC;
 wire[31:0] pcout;
 reg [31:0] pcin;
 programCounter pc(.npc(pcin),.pc(pcout));
 initial begin
 # 10
 pcin = 10;
 #10
 pcin = 20;
 #10
 pcin = 25;
#10;
end
always @(pcin)
    #2 $display("Time = %0d\tpcin =%0d\tpcout=%0d", $time, pcin, pcout);
endmodule
