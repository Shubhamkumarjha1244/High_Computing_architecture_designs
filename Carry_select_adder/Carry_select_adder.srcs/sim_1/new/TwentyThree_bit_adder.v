`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 10:19:05
// Design Name: 
// Module Name: TwentyThree_bit_adder
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


module TwentyThree_bit_adder(innA,innB,carry_in,sum,carry_out);
    input[22:0] innA,innB;
    input carry_in;
    output[22:0] sum;
    wire[23:0] internal_carry;
    output carry_out;
    
    assign internal_carry[0]=carry_in;
    assign carry_out=internal_carry[23];
    parameter size_of_adder=5'd23;
    
    genvar i; //declaration of genevar variable
    
    
    generate for(i=0;i<size_of_adder;i=i+1)
        begin : bit       //naming the instancited modules
        
            //auto instatition for 23 times
            one_bit_carry_select_adder adder(innA[i],innB[i],internal_carry[i],sum[i],internal_carry[i+1]);
        
        
        end
    endgenerate
    
endmodule
