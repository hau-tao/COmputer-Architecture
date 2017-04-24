`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:    16:07:44 10/21/2015
// Module Name:    latch
//////////////////////////////////////////////////////////////////////////////////
module latch(input wire[31:0] npc, input wire[31:0] instr, output reg [31:0] npcout, output reg[31:0] instrout
    );
     initial begin
     npcout <= npc;
    instrout <= instr;
    end
    
     always @*
     begin
     #5  // clock cycle of the latch
        npcout <= npc;
        instrout <= instr;
     end
endmodule
