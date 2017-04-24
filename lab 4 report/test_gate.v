`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
//
// Create Date:   13:53:06 12/06/2015
// Design Name:   and_gate
// Module Name:   /home/hau/Desktop/lab4/test_gate.v
// Project Name:  lab4
////////////////////////////////////////////////////////////////////////////////

module test_gate;

	// Inputs
	reg zero;
	reg branch;

	// Outputs
	wire PCSrc;

	// Instantiate the Unit Under Test (UUT)
	and_gate uut (
		.zero(zero), 
		.branch(branch), 
		.PCSrc(PCSrc)
	);

	initial begin
		// Initialize Inputs
		zero = 0;
		branch = 0;

		// Wait 100 ns for global reset to finish
	
		#1;
		branch =1;
		#1
		zero =1;
		#1
		branch = 0;
		end
	
		always @* begin
		
		 #2$display("time=%0d\tbranch=%0b\tzero=%0b\tPCSrc=%0b\t",$time, branch, zero, PCSrc);
		
		end
     
		

	
endmodule

