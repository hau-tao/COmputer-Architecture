`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hau Tao 
// Create Date:    15:31:52 11/12/2015 
// Module Name:    ID_latch 

//////////////////////////////////////////////////////////////////////////////////

module ID_latch (
        input[1:0]  ctlwb_out,
        input[2:0]  ctlm_out,
        input[3:0]  ctlex_out,
        input[31:0] npc,
        input[31:0] readdat1,
        input[31:0] readdat2,                    
        input[31:0] signext_out,                    
        input[4:0]  instr_2016,
        input[4:0]  instr_1511,

        output reg[1:0]  wb_ctlout,
        output reg[2:0]  m_ctlout,
		  output reg[3:0]  ex_ctlout,
        output reg[31:0] npcout,
        output reg[31:0] rdata1out,
        output reg[31:0] rdata2out,
        output reg[31:0] s_extendout,
        output reg[4:0]  instrout_2016,
        output reg[4:0]  instrout_1511
    );

  

    initial begin
	 
	 wb_ctlout <= 0;
    m_ctlout  <= 0;
	 ex_ctlout <= 0;
    npcout    <= 0;
    rdata1out <= 0;
    rdata2out <= 0;
    s_extendout<= 0;
    instrout_2016 <= 0;
    instrout_1511 <= 0; 
	 end 
	 always @*
     begin
     #5  // clock cycle of the latch
         wb_ctlout <= ctlwb_out;
			m_ctlout  <= ctlm_out;
			ex_ctlout <= ctlex_out;
			npcout    <= npc;
			rdata1out <= readdat1;
			rdata2out <= readdat2;
			s_extendout<= signext_out;
			instrout_2016 <= instr_2016;
			instrout_1511 <= instr_1511; 
     end
endmodule 