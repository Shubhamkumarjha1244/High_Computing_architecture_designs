`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Patna
// Engineer: Shubham kumar jha
// 
// Create Date: 15.01.2025 08:06:32
// Design Name: HPCES LAb
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


module thirty_two_carry_select_adder(innA,innB,control,sum,carry_out,overflow_flag);
    parameter   number_of_adder=32;
    input [number_of_adder-1:0] innA,innB;
    input control;
    output[number_of_adder-1:0] sum;
    output carry_out; 
    output overflow_flag;
    
    wire [number_of_adder-1:0] xor_inn2;
    wire[number_of_adder:0] int_carry;  //internal_carry function
    
    assign int_carry[0]=control;
    assign carry_out=int_carry[number_of_adder];
    

    genvar i;


    generate    for(i=0;i<number_of_adder;i=i+1)
        begin: byte_adder //name of block
            //initialization of 32 1B carry select Adder using generate
            assign xor_inn2[i]=innB[i]^control;     //2'S complement block
            one_bit_carry_select_adder add(innA[i],xor_inn2[i],int_carry[i],sum[i],int_carry[i+1]); //import 1 bit carry
            
        end
    
    endgenerate
    
    assign overflow_flag=carry_out^int_carry[number_of_adder-1]  ;     

endmodule
