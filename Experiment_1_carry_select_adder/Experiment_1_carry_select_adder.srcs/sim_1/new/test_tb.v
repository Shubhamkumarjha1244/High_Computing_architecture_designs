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
reg[7:0] inn1,inn2;
reg select;
wire[7:0] sum;
wire carry_out;
wire overflow;

//TwentyThree_bit_adder dut(inn1,inn2,carry_in,sum,carry_out);
Eight_bit_carry_select_adder dut(inn1,inn2,select,sum,carry_out,overflow);
initial
    begin
    inn1=8'd1;
    inn2=8'd1;
    select=1'b1;

    #10
    inn1=8'd255;
    inn2=8'd255;
    select=1'b0;

    #10
    inn1=8'd255;
    inn2=8'd255;
    select=1'b1;
    #10
    inn2=8'd177;
    inn1=8'd144;
    select=1'b1;
    #10
    $finish;
    end
endmodule
