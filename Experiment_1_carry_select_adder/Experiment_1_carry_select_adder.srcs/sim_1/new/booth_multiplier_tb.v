`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 22:14:56
// Design Name: 
// Module Name: booth_multiplier_tb
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


module booth_multiplier_tb();
    reg clk=0;
    reg[15:0] inn1,inn2;
    wire[31:0] prod;
    wire[4:0] counter;
    wire flag;
    
    booth_multiplier_32_bit dut(.multiplier(inn1),.multiplicand(inn2),.product(prod),.counter(counter),.flag(flag));
    
    always
        #5 clk=~clk;
        
    initial 
        begin
            inn1=15;
            inn2=20;
        end
        
    initial
        #100 $finish;
    
endmodule
