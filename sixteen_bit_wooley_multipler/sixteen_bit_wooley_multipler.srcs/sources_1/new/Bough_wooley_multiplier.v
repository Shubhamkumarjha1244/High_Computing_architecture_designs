`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 10:53:59
// Design Name: 
// Module Name: Bough_wooley_multiplier
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


module Bough_wooley_multiplier(num1,num2,product);
parameter size=8;
input[size-1:0] num1,num2;
output [(2*size)-1:0] product;

wire[size-1:0] inn1[size-1:0];
wire[size-1:0] inn2[size-1:0];
wire[size-1:0] carry_in[size-1:0];
wire[size-1:0] sum[size-1:0];
wire[size-1:0] carry_out[size-1:0];

and_block add_0(num1[size-2:0],num2[0],inn1[0]);
and_block add_1(num1[size-2:0],num2[1],inn2[0]);
FA_block FA1({~(inn1[size-2]^inn2[0]),inn1[0][size-1:1]},inn2[0],7'd0,sum[0],carry_out[0]);
assign product[0]=inn1[0][0];
genvar i;

generate for(i=1;i<size-2;i=i+1)
    begin:block
        and_block add_7(num1[size-2:0],num2[i+1],inn2[i]);
        FA_block FA1({~(inn1[size-1]^inn2[i]),sum[i-1][size-2:1]},inn2[i],carry_out[i-1],sum[i],carry_out[i]);
        assign product[i]=sum[i][0];
    end
    endgenerate
    

last_fa_block last_block(sum[size-2][size-1],carry_out[size-2],num1[size-1],num2[size-1],product[(2*size)-1:size-2],carry_out[size-1]); 


endmodule
