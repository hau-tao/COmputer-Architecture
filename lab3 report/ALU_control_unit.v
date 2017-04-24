`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao
// 
// Create Date:    10:08:06 11/16/2015 
//////////////////////////////////////////////////////////////////////////////////
module ALU_control_unit(input[5:0] function_bit, input[1:0] ALUop, output reg[2:0] select
    );
	 //ALU op
	 parameter LW = 2'b00;
	 parameter SW = 2'b00;
	 parameter branch_equal = 2'b01;
	 parameter R_type = 2'b10;
	 parameter not_valid =2'b11;
	 
	 //functionality
	 parameter loadword_func = 6'bxxxxxx;
	 parameter storeword_func = 6'bxxxxxx;
	 parameter branch_equal_func =6'bxxxxxx;
	 parameter add_func = 6'b100000;
	 parameter subtract_func=6'b100010;
	 parameter AND_func =6'b100100;
	 parameter OR_func =6'b100101;
	 parameter set_on_less_than_func =6'b101010;
	 
	 //alu_control_input
	 parameter ADD_control = 3'b010 ;
	 parameter SUBTRACT_control =3'b110;
	 parameter OR_control = 3'b001;
	 parameter AND_control =3'b000;
	 parameter SET_ON_LESS_THAN_control = 3'b111;
	 initial begin
				if( loadword_func == 6'bxxxxxx || storeword_func == 6'bxxxxxx)
				begin
				select = 3'b010;
				end

				else if (branch_equal_func == 6'bxxxxxx)
				begin
				select = 3'b110;
				end
				
        end
	 always@*
	 case (ALUop)
	 LW: select = ADD_control;
	 SW: select = ADD_control;
	 
	 branch_equal: select = SUBTRACT_control;
						
	 R_type:begin
			case(function_bit)
			add_func: begin
			select = ADD_control;
			end
												 
			subtract_func: begin
			select = SUBTRACT_control;
			end
														
			AND_func:		begin
			select = AND_control ;
			end
			OR_func: begin
			select = OR_control ;
			end
			set_on_less_than_func: begin
			select = SET_ON_LESS_THAN_control ;
			end
			endcase
			end
	default: $display("Not available instruction");
	endcase
endmodule
