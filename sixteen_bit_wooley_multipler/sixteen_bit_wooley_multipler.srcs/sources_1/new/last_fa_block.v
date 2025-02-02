`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 14:57:48
// Design Name: 
// Module Name: last_fa_block
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


module last_fa_block(sum,carry_in,x,y,out);
    parameter size=4;               //size of multiplier
    input x,y;                     // last and operation
    input[size-3:0] sum;          //size of upcoming sum block excluding lsb sum as its go to product
    input[size-2:0] carry_in;    //size of upcoming carry bit
    output[size-1:0] out;       //final answer
    wire [size-2:0] carry_out; //internal_carry_flow 

    Full_adder_1_bit fa(sum[0],1'b1,carry_in[0],out[0],carry_out[0]); //zero_th block
  
    genvar i;
    generate for(i=1;i<size-2;i=i+1)
        begin: bit
        Full_adder_1_bit add(sum[i],carry_out[i-1],carry_in[i],out[i],carry_out[i]);    // i_th_adder_block
        end
    endgenerate
    
    Full_adder_1_bit add_2nd_last(~(x&y),carry_out[size-3],carry_in[size-2],out[size-2],carry_out[size-2]); //second last adder block
    assign out[size-1]=1'b1+carry_out[size-2]+1'b0;       //last adder block without carry_out functionality
endmodule
