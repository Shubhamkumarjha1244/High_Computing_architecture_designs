`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 19:47:20
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
parameter size=32;
reg[size-1:0] multiplier,multiplicant;
wire[(2*size-1):0] product_booth,product_wooley,compare;
integer i=0;

woogh_boogly dut1(multiplier,multiplicant,product_wooley);
booth_multiplier_n_bit_functional dut2(clk,rst,multiplier,multiplicand,product_booth);

assign compare=product_woogley^product_booth;
initial
    for(i=0;i<100;i=i+1)
    begin
    multiplier=$random;
    multiplicant=$random;
    #10;   
    end


endmodule
