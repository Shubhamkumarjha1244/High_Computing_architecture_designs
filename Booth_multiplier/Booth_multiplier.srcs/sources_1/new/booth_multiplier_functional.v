`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 00:44:21
// Design Name: 
// Module Name: booth_multiplier_functional
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


module booth_multiplier_n_bit_functional(clk,multiplier,multiplicand,product);
    parameter size=32;
    input   clk;
    input[size-1:0] multiplier,multiplicand;
    output[(2*size)-1:0] product;
    assign product={ppr,multiplier_reg};
    reg flag=0;
    reg[size-1:0] ppr=0;
    reg[size-1:0] multiplier_reg=0;
    reg lsb=0;
    
    wire[size-1:0] adder_substractor_out;
    wire[size-1:0] ppr_wire;
    wire mux_select;
    
    
    
    n_bit_carry_select_adder adder_substractor(ppr,multiplicand,multiplier_reg[0],adder_substractor_out);
    assign mux_select=multiplier_reg[0]^lsb;
    n_bit_two_one_mux mux(ppr,adder_substractor_out,mux_select,ppr_wire);
     
     
   
    initial @(posedge clk)
        begin
        multiplier_reg=multiplier;
        end
    always @(posedge clk)
        if(flag==1)
                begin
                ppr=ppr_wire;
                {ppr,multiplier_reg,lsb}={ppr,multiplier_reg,lsb}>>>1;
                end 
        else
            flag=1;

endmodule
