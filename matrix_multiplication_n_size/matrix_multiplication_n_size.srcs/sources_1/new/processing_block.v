`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 19:00:26
// Design Name: 
// Module Name: processing_block
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


module processing_block(inn_up,inn_left,inn_corner,out_down,out_right,out_corner);
    input inn_up,inn_left,inn_corner;
    output out_down,out_right,out_corner;
    
    assign out_corner=(inn_up & inn_left)+inn_corner;
    assign out_down=inn_up;
    assign out_right=inn_left;
      
endmodule
