`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 20:09:06
// Design Name: 
// Module Name: booth_multiplier_32_bit
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


module booth_multiplier_32_bit(clk,multiplier,multiplicand,product,counter,flag);
    input clk;
    input[15:0] multiplier,multiplicand;
    output[31:0] product;
    output reg flag=0;
    output reg [4:0] counter=0;
    reg [15:0] ppr=0,multiplier_reg=0;
    reg Lsb;
    
    wire[15:0] ppr_inn;
    wire xor_result;
    wire[15:0] adder_sub_result;
    wire carry_flag,overflow_flag;
    
    
    assign product={ppr,multiplier};
    
    thirty_two_carry_select_adder adder_32(ppr,multiplicand,ppr[0],adder_sub_result,carry_flag,overflow_flag);
    xor x1(xor_result,Lsb,multiplier_reg[0]);
    two_one_16_bit_mux mux(ppr,adder_sub_result,xor_result,ppr_inn);
    
    always @(posedge clk)
        begin
        counter=counter+1'b1;
       end
               
                    
endmodule
