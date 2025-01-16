`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 11:36:55
// Design Name: 
// Module Name: Three_bit_counter
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


module Three_bit_counter(signal,out);
    input signal;
    output reg [2:0] out=3'd0;
    
    always @(signal)
        out=out+1;
        
endmodule
