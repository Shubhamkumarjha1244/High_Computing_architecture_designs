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


module Bough_wooley_multiplier(num1,num2,product,check);
    parameter size=4;               //operand size of multiplier
    input[size-1:0] num1,num2;     //input size
    output [(2*size)-1:0] product; //output size

    wire[size-2:0] inn1; //upper_and_block
    wire[size-2:0] inn2[size-2:0]; //left_and block 
    wire[size-2:0] internal_carry[size-2:0]; //internal_carry
    wire[size-2:0] sum[size-2:0]; //internal sum
    output[size-2:0] check;
    assign check=sum[0];

    and_block add_up_0(num1[size-2:0],num2[0],inn1); //upper side AND block
    and_block add_left_0(num1[size-2:0],num2[1],inn2[0]); //left side AND block

    FA_block FA0({~(num1[size-1]&num2[0]),inn1[size-2:1]},inn2[0],4'd0,sum[0],internal_carry[0]); //first adder row
    assign product[0]=inn1[1];  //assigning final product value
    genvar i;

    generate for(i=1;i<size-1;i=i+1)
        begin:block
            and_block add_left(num1[size-2:0],num2[i+1],inn2[i]);   //i_th left and block 
            
            FA_block FA1({~(num1[size-1]&num2[i]),sum[i-1][size-2:1]},inn2[i],internal_carry[i-1],sum[i],internal_carry[i]); //i_th adder block  
            assign product[i]=sum[i][0];    //assigning final product value
        end
   endgenerate
    
    last_fa_block last_fa(sum[size-2],internal_carry[size-2],num1[size-1],num2[size-1],product[(2*size)-1:size-1]);


    
 
    



endmodule
