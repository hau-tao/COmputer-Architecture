`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau tao
// 
// Create Date:    20:53:46 11/24/2015 
// Module Name:    alu 
//////////////////////////////////////////////////////////////////////////////////
module alu(
	input wire [31:0] A,
	input wire [31:0] B,
	input wire [2:0]  control,
	output reg 	      zero,
	output reg [31:0] result
    );
	 
	 parameter add = 3'b010,
              subtract  = 3'b110,
              and_alu  = 3'b000,
              or_alu   = 3'b001,
              set_on_less_than  = 3'b111;
              
    
    always @* begin
        case (control)
            add:  result <= A + B;
            subtract:  result <= A - B;
            and_alu:  result <= A&B;
            or_alu:   result <= A|B;
            set_on_less_than:  result <= (A<B)? 1:0;
            default: result <= 32'bx;
        endcase
		           begin
					  if (result==0)
					  zero <=0;
					  end
        
    end
endmodule



