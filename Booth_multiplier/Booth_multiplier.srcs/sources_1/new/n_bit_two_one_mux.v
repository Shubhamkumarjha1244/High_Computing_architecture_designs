`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 00:40:27
// Design Name: 
// Module Name: n_bit_two_one_mux
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


module n_bit_two_one_mux(inn1,inn2,sel,out);
    parameter size=4;
    input[size-1:0] inn1,inn2; // size-1 bit input
    input sel; //select line
    output[size-1:0] out; //output
    
    assign out=sel?inn2:inn1;//mux initialization
    
    
endmodule
