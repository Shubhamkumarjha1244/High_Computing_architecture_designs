`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 20:45:48
// Design Name: 
// Module Name: Register_file
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


module Register_file(dr_addr,sr1_addr,sr2_addr,dr_data_wr,sr1_data_rd,sr2_data_rd);
    input[4:0] dr_addr,sr1_addr,sr2_addr; //input addr line of size log(32) bit
    input[31:0] dr_data_wr; //32 bit data line
    output[31:0] sr1_data_rd,sr2_data_rd; //32 bit data line
    
    reg [31:0] mem [31:0]; // 32-(32 bit)-register memory
    
    assign sr1_data_rd=mem[sr1_addr];
    assign sr2_data_rd=mem[sr2_addr];
     
    always @(dr_addr,dr_data_wr)
        mem[dr_addr]=dr_data_wr;
    
    
    
endmodule
