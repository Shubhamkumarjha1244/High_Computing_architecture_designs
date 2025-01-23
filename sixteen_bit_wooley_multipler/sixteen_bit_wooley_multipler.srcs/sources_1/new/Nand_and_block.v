`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 11:06:02
// Design Name: 
// Module Name: Nand_and_block
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

module and_block(innA,innB,out);
    parameter size=7;
    input[size-1:0] innA;
    input[size-1:0] innB;
    output [size-1:0] out;
    
    genvar i;
    
    generate for(i=0;i<size;i=i+1)
        begin:annd
            assign out[i]=innA[i]&innB[i];
        end 
     endgenerate
endmodule