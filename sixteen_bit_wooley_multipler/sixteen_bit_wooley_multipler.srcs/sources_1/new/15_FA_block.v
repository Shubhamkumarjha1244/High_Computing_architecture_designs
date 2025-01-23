`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 23:26:39
// Design Name: 
// Module Name: Fifteen_FA_block
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


module FA_block(innA,innB,carry_in,sum,carry_out);
parameter size=7;
input[size-1:0] innA,innB;
input[size-1:0] carry_in;
output[size-1:0] sum;
output[size-1:0] carry_out;
genvar i;
    generate for(i=0;i<size;i=i+1)
        begin:bit
            Full_adder_1_bit adder(innA[i],innB[i],carry_in[i],sum[i],carry_out[i]);
        end
    endgenerate
endmodule
