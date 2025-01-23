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


module TwentyThree_bit_adder(innA,innB,select,sum,carry_out);
    input[22:0] innA,innB; //input of 23 bit
    input select; //carry in
    output[22:0] sum;
    wire[23:0] internal_carry; //internal carry for each 1 bit block
    output carry_out;
    
    assign internal_carry[0]=select;
    assign carry_out=internal_carry[23];
    
    parameter size_of_adder=5'd23; //adder size for generate block
    
    genvar i; //declaration of genevar variable
    
    
    generate for(i=0;i<size_of_adder;i=i+1)
        begin : bit       //naming the instancited modules
        
            //auto instatition for 23 times
            assign innB[i]=innB[i]^select;
            one_bit_carry__adder adder(innA[i],innB[i],internal_carry[i],sum[i],internal_carry[i+1]); //import 1 bit carry
        
        
        end
    endgenerate
    
endmodule
