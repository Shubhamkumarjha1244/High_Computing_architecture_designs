`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 11:29:58
// Design Name: 
// Module Name: fuller_adder
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


module fuller_adder(inn1,inn2,carry_in,sum,carry_out);
    input inn1,inn2,carry_in;    //taken 2 input & carry_in wire for fulladder input
    output sum,carry_out; //taken output of sum,carry 
    
    assign sum=inn1^inn2^carry_in; //use concatenation operator for sum& carry_out generation
    assign carry_out=(inn1 & inn2)|(inn2 & carry_in)|(inn1 & carry_in);
endmodule
