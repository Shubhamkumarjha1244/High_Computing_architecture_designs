`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 21:05:32
// Design Name: 
// Module Name: register_bank_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register_bank_tb();
    reg clk=0;
    reg[4:0] dr_addr,sr1_addr,sr2_addr;
    reg[31:0]dr_data_wr;
    wire[31:0] sr1_data_rd,sr2_data_rd;
    integer i;
    
    Register_file dut(dr_addr,sr1_addr,sr2_addr,dr_data_wr,sr1_data_rd,sr2_data_rd);
    always
    #5 clk=~clk;
    
    initial
            for(i=0;i<90;i=i+1)
                begin
                dr_addr=$random;
                sr1_addr=$random;
                sr2_addr=$random;
                dr_data_wr=$random;
                #10;
                end
          
    initial
        #1000 $finish;  
endmodule
