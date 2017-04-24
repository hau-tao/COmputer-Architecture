`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// Create Date:    10:43:29 10/21/2015
// Module Name:    instruction_memory
//////////////////////////////////////////////////////////////////////////////////

module instruction_memory(output reg[31:0] data, input wire[31:0] address);
 reg[31:0]words[0:127]; // 128 words of 32-bit memory
 initial
    begin
    words[0] <= 'hA00000AA;
    words[1] <= 'h10000011;
    words[2] <= 'h20000022;
    words[3] <= 'h30000033;
    words[4] <= 'h40000044;
    words[5] <= 'h50000055;
    words[6] <= 'h60000066;
    words[7] <= 'h70000077;
    words[8] <= 'h80000088;
    words[9] <= 'h90000099;
    end

 always@(address)
  begin
    data <= words[address];
  end
endmodule


