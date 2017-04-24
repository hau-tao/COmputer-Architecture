`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: Hau Tao
//
// Create Date:   09:39:54 11/16/2015
// Design Name:   adder
// Module Name:   /home/hau/Desktop/lab3/test_adder.v
// Project Name:  lab3
////////////////////////////////////////////////////////////////////////////////

module test_adder;

	// Inputs
	reg [31:0] add_in1;
	reg [31:0] add_in2;

	// Outputs
	wire [31:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.add_in1(add_in1), 
		.add_in2(add_in2), 
		.add_out(add_out)
	);

	initial begin
		// Initialize Inputs
		add_in1 = 0;
		add_in2 = 0;

		// Wait 100 ns for global reset to finish
		#10;
		add_in1 =5;
		add_in2 = 12;
        
		// Add stimulus here
		#2
		$display("time = %0d\tadd_in1=%0d\t add_in2=%0d\tadd_out=%0d\t",$time, add_in1, add_in2, add_out);

	end
      
endmodule

