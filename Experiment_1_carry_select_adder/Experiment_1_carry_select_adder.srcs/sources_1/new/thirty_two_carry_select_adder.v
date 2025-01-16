`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 08:06:32
// Design Name: 
// Module Name: thirty_two_carry_select_adder
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


module thirty_two_carry_select_adder(innA,innB,carry_in,sum,carry_out);

input[31:0] innA,innB;
input carry_in;
output[31:0] sum;
output carry_out; 
wire[4:0] int_carry;  //internal_carry function
assign int_carry[0]=carry_in;
assign carry_out=int_carry[4];

parameter   number_of_adder=3'd4;

genvar i;

generate    for(i=0;i<number_of_adder;i=i+1)
    begin: byte_adder
        Eight_bit_carry_select_adder add(innA[8*(i+1)-1:8*i],innB[8*(i+1)-1:8*i],int_carry[i],sum[8*(i+1)-1:8*i],int_carry[i+1]);
    end
endgenerate


endmodule
