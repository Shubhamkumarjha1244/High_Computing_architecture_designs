`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 23:34:21
// Design Name: 
// Module Name: Full_adder_1_bit
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


module Full_adder_1_bit(innA,innB,carry_in,sum,carry_out);
input innA,innB,carry_in;
output sum,carry_out;

assign {carry_out,sum}=innA+innB+carry_in;

endmodule
