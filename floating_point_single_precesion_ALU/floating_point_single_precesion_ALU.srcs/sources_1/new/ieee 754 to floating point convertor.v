`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2025 10:35:01
// Design Name: 
// Module Name: ieee 754 to floating point convertor
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


module ieee_754_to_floating_point_convertor(ieee,sign,before_decimal_number,after_decimal_number);

    input[31:0] ieee;
    output sign;
    output[64:0] before_decimal_number;
    output[64:0] after_decimal_number;
    
    wire[7:0] exponent;
    wire[22:0] mentissa;
    wire greaterequal;
    wire[7:0] number_of_shift;
    
    assign sign=ieee[31];
    assign exponent=ieee[30:23];
    assign mentissa=ieee[22:0];
    
    assign greatequal=exponent>=127?1'b1:1'b0;
    assign number_of_shift=greatequal?exponent-127:127-exponent;
    
  
    assign before_decimal_number=greaterequal?{1'b1,mentissa}<<number_of_shift:mentissa[23-number_of_shift];
    assign after_decimal_number=greaterequal?mentissa[23-number_of_shift]:{1'b1,mentissa}>>number_of_shift;
    
    
    
    
endmodule
