`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 08:51:52
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb();
reg clk=0;
reg [3:0] num1;
reg [3:0] num2;
wire [7:0] prod;
wire[2:0] check;
Bough_wooley_multiplier dut(num1,num2,prod,check);

always
    #(0.5) clk=~clk;
    
initial 
    begin
        num1=4'd2;
        num2=4'd4;
        #1000
        $finish;
    end
endmodule
