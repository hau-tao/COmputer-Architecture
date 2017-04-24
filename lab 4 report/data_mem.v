`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Engineer: hau tao
// 
// Create Date:    01:50:27 12/06/2015 
// Design Name: 
// Module Name:    data_mem 

//////////////////////////////////////////////////////////////////////////////////

module data_mem(input [31:0] address, inout[31:0] writedata, input memread, input memwrite, output reg[31:0] readdata
    );
	 reg[31:0] register[0:255];
	 reg [31:0] data_in;
	 
	 
	 integer i;
	 initial
	 begin
	   data_in <= 'h0000000A;
	   register[0] <= 'h002300AA;
		register[1] <= 'h10654321;
		register[2] <= 'h00100022;
		register[3] <= 'h8C123456;
		register[4] <= 'h8F123456;
		
		register[5] <= 'hAD654321;
		register[6] <= 'h13012345;
		register[7] <= 'hAC654321;
		register[8] <= 'h12012345;
		for ( i = 9; i < 255; i = i +1) 
			begin
				register[i] <= 'h11111111;
			end
		end
		assign writedata = (memread)? data_in:'hx;
		// write data
		always @ (address or writedata)
		
		 begin 
    if ( memwrite) begin
        register[address] = writedata;
     end
	  
	  //read data
	  if ( memread) begin
        readdata = register[address] ;
     end
  end

endmodule
