`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 10:42:19
// Design Name: 
// Module Name: twenty_three_bit_adder_tb
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


module twenty_three_bit_adder_tb();
    reg[22:0] input_A,input_B;
    reg carry_in;
    wire[22:0] sum;
    wire carry;
    
    //imported 23_bit_caary-module
    TwentyThree_bit_adder dut(innA,innB,carry_in,sum,carry_out);
    
    initial
        begin
            input_A=23'd8388607;input_B=23'd1;carry_in=1'b1;
            #10
            input_A=23'd8388607;input_B=23'd8388607;carry_in=1'b1; //edge case
            #10
            $finish;
       end   
            
    
endmodule
