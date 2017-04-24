`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:22 11/04/2015 
// Design Name: 
// Module Name:    register_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module register_file( input reg_write, input[4:0] rs, input [4:0] rt, input [4:0] rd, input [31:0] write_data, output reg[31:0] A, output reg[31:0] B
    );
	 reg [31:0]register[0:32];
	 integer i;
	 initial
	 begin
		
		register[0] <= 'h002300AA;
		register[1] <= 'h10654321;
		register[2] <= 'h00100022;
		register[3] <= 'h8C123456;
		register[4] <= 'h8F123456;
		
		register[5] <= 'hAD654321;
		register[6] <= 'h13012345;
		register[7] <= 'hAC654321;
		register[8] <= 'h12012345;
		for ( i = 9; i < 31; i = i +1) 
			begin
				register[i] <= 'h11111111;
			end
	end
	 
	 always @(register[rs] or register[rt])
	 begin 
		 A <= register[rs];
	 	 B <= register[rt];
		 if (reg_write )
		 begin
		 register[rd] <= write_data;
		 end
		 
	 end
	 
		 
		

endmodule
