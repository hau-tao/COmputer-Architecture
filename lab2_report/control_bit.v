`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
// 
// Create Date:    16:24:21 11/04/2015 
// Module Name:    control_bit 
//
//////////////////////////////////////////////////////////////////////////////////
module control_bit(input[5:0] opcode, output reg[3:0] EX, output reg[2:0] MEM, output reg[1:0] WB
    );
	 

	 
parameter R_type = 6'b000000;
parameter lw =6'b100011;
parameter sw =6'b101011;
parameter  beq= 6'b000100;
always @*
case (opcode)
R_type: begin
		  EX = 4'b1100;
		  MEM = 3'b000;
        WB = 2'b10;
		  end
lw:     begin
		  EX = 4'b0001;
		  MEM =3'b010;
		  WB = 2'b11;
		  end
sw:     begin
		  EX = 4'bx001;
		  MEM =3'b001;
		  WB = 2'b0x;
		  end
		  
beq:    begin 
		  EX = 4'bx010;
		  MEM =3'b100;
		  WB = 2'b0x;
		  end
default: $display("Not available instruction");
endcase

endmodule
