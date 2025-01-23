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
reg [7:0] num1;
reg [7:0] num2;
wire [15:0] prod;
Bough_wooley_multiplier dut(num1,num2,prod);

initial 
    begin
        num1=8'd2;
        num2=8'd2;
        #10
        $finish;
    end
endmodule
