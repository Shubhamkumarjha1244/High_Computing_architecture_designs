`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 12:30:27
// Design Name: 
// Module Name: test_tb
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


module test_tb();
    reg[4:0] multiplier;
    reg[4:0] multiplicant;
    wire[9:0] product;
    Booth_algo dut(multiplier,multiplicant,product);
    
    initial
        
        begin
            multiplier=5'b10011;
            multiplicant=5'd5;
        end
        
    initial
        #1000 $finish;
        
        
    
endmodule
