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


module last_fa_block(sum,carry,x,y,out,carry_out);
    parameter size=8;
    input x,y;
    input[size-1:0] sum,carry;
    output[size-1:0] out;
    output[size-2:0] carry_out;
    Full_adder_1_bit fa(sum[1],1'b1,carry[0],out[0],carry_out[0]);
    genvar i;
    generate for(i=1;i<size-2;i=i+1)
        begin: bit
        Full_adder_1_bit add(sum[i+1],carry_out[i],carry[i],out[i],carry_out[i]);
        end
    endgenerate
    
    Full_adder_1_bit add_2nd_last(~(x&y),carry_out[size-3],carry[size-2],out[size-2],carry_out[size-2]);
    Full_adder_1_bit add_last(1'b1,carry_out[size-2],1'b0,out[size-1],carry_out[size-1]);
        
endmodule
