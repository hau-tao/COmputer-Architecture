`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:hau tao
// Create Date:   21:13:13 11/24/2015
// Design Name:   alu
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] control;

	// Outputs
	wire zero;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.control(control), 
		.zero(zero), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		A <= 'b1010;
		B <= 'b0111;
		control <= 'b011;
		$display("A=%b\tB=%b",A,B);
		$monitor("ALUOp=%b\tresult=%b",control, result);
		#1
		control <= 'b100;
		#1
		control <= 'b010;
		#1
		control <= 'b111;
		#1
		control <= 'b011;
		#1
		control <= 'b110;
		#1
		control <= 'b001;
		#1
		control <= 'b000;
		#1
		$finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

