`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 22:32:53
// Design Name: 
// Module Name: two_one_16_bit_mux
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


module two_one_16_bit_mux(inn1,inn2,sel,out);
    input[15:0] inn1,inn2;
    input sel;
    output[15:0] out;
    
    assign out=sel?inn1:inn2;
    
endmodule
