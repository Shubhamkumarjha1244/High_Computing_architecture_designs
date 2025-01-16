`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shubham Kumar Jha
// 
// Create Date: 12.01.2025 11:28:04
// Design Name: IIT Patna
// Module Name: two_one_mux
// Project Name: Cordic using basic behavioural block
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


module two_one_mux(innA,innB,sel,out);
    input[31:0] innA,innB;
    input sel;
    output out;
    
    assign out = sel ? innB:innA ;
    
endmodule
