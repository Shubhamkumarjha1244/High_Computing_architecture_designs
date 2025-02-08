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


module booth_multiplier_n_bit_functional(clk,rst,multiplier,multiplicand,product);
    parameter size=4; //size of multiplier & multiplicant
    reg flag=1;
    input   clk,rst; //control signal port
    input[size-1:0] multiplier,multiplicand; //input
    output[(2*size)-1:0] product; //output
    assign product={ppr,multiplier_reg}; //final_output assignament
    reg[size-1:0] ppr=0; //internal ppr registor
    reg[size-1:0] multiplier_reg=0; //multiplier register
    reg lsb=0; //1 bit registor
    
    wire [size-1:0] adder_substractor_out; //output of adder_substractor block
    wire [size-1:0] ppr_wire;   //output of mux
    wire mux_select; //select line for mux
    
    
    
    n_bit_carry_select_adder adder_substractor(ppr,multiplicand,multiplier_reg[0],adder_substractor_out); //adder_substractor block initialization
    xor xor1(mux_select,lsb,multiplier_reg[0]); //xor block initialization
    n_bit_two_one_mux mux(ppr,adder_substractor_out,mux_select,ppr_wire); //mux block initialization
     
     
    begin
    always @(posedge clk) //initial assignment in registors
        if(rst & flag)
            begin
                multiplier_reg=multiplier; 
                flag=0;
            end
    always @(posedge clk)
        if(flag==0)  
                begin
                ppr=ppr_wire; //value assignment in reg block from wire with clock
                {ppr,multiplier_reg,lsb}={ppr[size-1],ppr,multiplier_reg}; // arthemetic right shifting with control signal
                end 
    end

endmodule
