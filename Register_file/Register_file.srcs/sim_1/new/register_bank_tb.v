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
    reg read,write; //control signal
    reg[4:0] dr_addr,sr1_addr,sr2_addr; //address reg
    reg[31:0]dr_data_wr; //destination data registor
    wire[31:0] sr1_data_rd,sr2_data_rd;// source data registor 
    integer i;
    
    Register_file dut(read,write,dr_addr,sr1_addr,sr2_addr,dr_data_wr,sr1_data_rd,sr2_data_rd); //dut initialization
    always
    #5 clk=~clk;
    
    initial
            for(i=0;i<90;i=i+1)
                begin
                read=$random; //random variable initialization
                write=$random;
                dr_addr=$random;
                sr1_addr=$random;
                sr2_addr=$random;
                dr_data_wr=$random;
                #10;
                end
          
    initial
        #1000 $finish;  
endmodule
