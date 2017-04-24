`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
//
// Create Date:   15:34:02 11/07/2015
// Design Name:   register_file
// Module Name:   /home/hau/Desktop/labcse401/lab2/ID_stage/test_reg.v
// Project Name:  ID_stage
////////////////////////////////////////////////////////////////////////////////

module test_reg;

	// Inputs
	reg reg_write;
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [31:0] write_data;
	reg [31:0]register[0:4];
	
	integer i;

	// Outputs
	wire [31:0] A;
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.reg_write(reg_write), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.write_data(write_data), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		register[0] <= 'h002300AA;
		register[1] <= 'h10654321;
		register[2] <= 'h00100022;
		
			
		
		// 2ns delay
		#2 
		begin
		reg_write = 1;
		rs = 1;
		rt = 2;
		rd = 2;
		write_data = 5;
		end
	
		
	end
	
	always@*
	begin 
	#3 $display("Time = %0d\t rs =%0h\t rt=%0h\t rd=%0h\t write_data=%0h\t register[rd] =%0h\t  A=%0h\t B=%1h\t", $time, rs, rt, rd, write_data,register[rd], A, B);
	
	end
      
      
endmodule

