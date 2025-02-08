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


module Register_file(read,write,dr_addr,sr1_addr,sr2_addr,dr_data_wr,sr1_data_rd,sr2_data_rd);
    input read,write;//control signal read when read==1 & write==1
    input[4:0] dr_addr,sr1_addr,sr2_addr; //input addr line of size log(32) bit
    input[31:0] dr_data_wr; //32 bit data line
    output reg [31:0] sr1_data_rd,sr2_data_rd; //32 bit data line
    
    reg [31:0] mem [31:0]; // 32-(32 bit)-register memory
    
    always @(read,sr1_addr,sr2_addr) //read operation
    if(read)
        begin
        sr1_data_rd=mem[sr1_addr];
        sr2_data_rd=mem[sr2_addr];
        end
     
    always @(write,dr_addr,dr_data_wr) //write operation
        if(write)
            mem[dr_addr]=dr_data_wr;
    
    
    
endmodule
