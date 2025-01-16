`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 12:11:49
// Design Name: 
// Module Name: Adder_substractor
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


module Adder_substractor(innA,innB,add_sub,sum);

    input[31:0] innA,innB;
    input[1:0] add_sub;
    output [32:0]  sum;
    reg[1:0] substraction_sign;
    
    Comparator comp1(innA,innB,substraction_sign);
    
    assign sum=(add_sub==2'b10)?(innA+innB):(substraction_sign>2'b00)?(innA-innB):(innB-innA);
       

endmodule
