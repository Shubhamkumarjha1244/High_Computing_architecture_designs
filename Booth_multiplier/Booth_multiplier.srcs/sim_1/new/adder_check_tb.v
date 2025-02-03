`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 07:02:02
// Design Name: 
// Module Name: adder_check_tb
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

module test_tb();
    reg[31:0] inn1,inn2,new_inn2;
    reg control;
    
    wire[31:0] sum;
    reg[31:0] sum_correct;
    wire[31:0] compare;
    integer i;
    
    
    assign compare=sum^sum_correct;


     n_bit_carry_select_adder dut(inn1,inn2,control,sum);

    initial
        begin
        for(i=0;i<=7'd100;i=i+1)
        begin
            inn1=$random;
            inn2=$random;
            control=$random;
            if(control)
                new_inn2=(~inn2)+1;
            else
                new_inn2=inn2;
            sum_correct=inn1+new_inn2;
            #10;      
        end
            sum_correct=7'd100;
            #10;  
        end
             
     initial
        #10020 $finish;
        
endmodule
