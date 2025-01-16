`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 07:49:49
// Design Name: 
// Module Name: test_tb
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
reg[31:0] inn1,inn2;
reg carry_in;
wire[31:0] sum;
wire carry_out;

//TwentyThree_bit_adder dut(inn1,inn2,carry_in,sum,carry_out);
thirty_two_carry_select_adder dut(inn1,inn2,carry_in,sum,carry_out);
initial
    begin
    inn1=32'd1;
    inn2=32'd1;
    carry_in=1'b1;
    #10
    inn1=23'd8388607;
    inn2=23'd8388607;
    carry_in=1'b1;
    #10
    inn1=32'd4294967295;
    inn2=32'd4294967295;
    carry_in=1'b1;
    #10
    $finish;
    end
endmodule
