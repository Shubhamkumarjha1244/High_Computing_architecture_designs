`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 23:39:35
// Design Name: 
// Module Name: ram_test_tb
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


module ram_test_tb();
    reg control_signal;
    reg[31:0]data_wr;
    reg[4:0] addr_wr,addr_rd;
    wire[31:0] data_rd;
    
    integer i;
    RAM dut(control_signal,data_wr,addr_wr,data_rd,addr_rd);
    
    initial 
        for(i=0;i<90;i=i+1)
            begin
            control_signal=$random;
            data_wr=$random;
            addr_wr=$random;
            addr_rd=$random;
            #5;
            end
endmodule
