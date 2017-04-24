`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: hau tao
//
// Create Date:   13:05:11 12/06/2015
// Design Name:   data_mem
// Module Name:   /home/hau/Desktop/lab4/test_mem_data.v
// Project Name:  lab4
////////////////////////////////////////////////////////////////////////////////

module test_mem_data;

	// Inputs
	reg [31:0] address;
	reg memread;
	reg memwrite;
	

	// Outputs
	wire [31:0] readdata;

	// Bidirs
	wire [31:0] writedata;

	// Instantiate the Unit Under Test (UUT)
	data_mem uut (
		.address(address), 
		.writedata(writedata), 
		.memread(memread), 
		.memwrite(memwrite), 
		.readdata(readdata)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		memread = 0;
		memwrite = 0;

		// Wait 100 ns for global reset to finish
		
		#1;
		
		memread =1;
		#1;
		memwrite =1;
		#1;
		address =1;
		#1;
		address =2;
		#1
		address =3;
		memwrite =0;
		#1
		address =4;
		
		#1
		address =5;
		#1
		address =6;
		end
		
        
		// Add stimulus here
		always@(address or memread or memwrite)begin
		#1
		$display("time=%0d\taddress=%0d\twritedata=%h\treaddata=%h",$time,address,writedata,readdata);
end

      
endmodule

