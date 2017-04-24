`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer: hau tao
// Create Date:   14:07:13 11/07/2015
// Design Name:   extended_register
// Module Name:   /home/hau/Desktop/labcse401/lab2/ID_stage/test_extended_signal.v
// Project Name:  ID_stage
////////////////////////////////////////////////////////////////////////////////

module test_extended_signal;

	// Inputs
	reg [15:0] unextended_signal;

	// Outputs
	wire [31:0] extended_signal;

	// Instantiate the Unit Under Test (UUT)
	extended_register uut (
		.unextended_signal(unextended_signal), 
		.extended_signal(extended_signal)
	);

	initial begin
		// Initialize Inputs
		unextended_signal = 0;

		// Wait 1ns for global reset to finish
		
		#1 unextended_signal = 16'b1110000100111111;
		#2 unextended_signal = 16'b0000000100111111;
      end
		// Add stimulus here
		always @*
		begin
		#2 $display("Time = %0d\t unextended_signal =%0b\t extended_signal=%0b\t", $time, unextended_signal, extended_signal);
		#1 $display("Time = %0d\t unextended_signal =%0b\t extended_signal=%0b\t", $time, unextended_signal, extended_signal);
       end  
endmodule

