`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 23:15:36
// Design Name: 
// Module Name: RAM
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


module RAM(read,write,data_wr,addr_wr,data_rd,addr_rd);
input[31:0] data_wr;   //data to write
input[4:0]  addr_wr,addr_rd; //address of write,read
input read,write; //read when read==1 &write when write==1
output reg [31:0] data_rd;   //data read from destination

reg[31:0] mem[31:0];    //Ram intialization

always @(read,addr_rd,data_rd)
    if(read)
        data_rd=mem[addr_rd];

always @(write,data_wr,addr_wr)
    if(write)
        mem[addr_wr]=data_wr;


endmodule
