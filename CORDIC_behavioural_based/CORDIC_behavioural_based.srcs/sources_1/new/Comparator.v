`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 12:19:02
// Design Name: 
// Module Name: Comparator
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


module Comparator(innA,innB,out);
input[31:0] innA,innB;
output[1:0] out;

assign out=(innA-innB)>=0 ?((innA-innB)==0 ?2'b01:2'b10):2'b00;


endmodule
