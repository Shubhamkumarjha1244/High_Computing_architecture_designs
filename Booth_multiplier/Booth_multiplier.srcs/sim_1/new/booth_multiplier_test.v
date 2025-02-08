`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 01:17:17
// Design Name: 
// Module Name: booth_multiplier_test
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


module booth_multiplier_test();
    //input field
    reg clk=0;
    reg rst;
    parameter size=4;
    reg[size-1:0] multiplier,multiplicand;
    reg[7:0]counter=0;
    //output field
    wire[(2*size)-1:0] product;

  
    
    
    booth_multiplier_n_bit_functional dut(clk,rst,multiplier,multiplicand,product); // dut initilization
    
    always
        #5 clk=~clk; // clock initialization
    always @(posedge clk)
        if(counter!=size+1)
            counter=counter+1; //to count number of cycle, n cycle is target
        else
            $finish ;
    initial 
            begin
            multiplier=-3;
            multiplicand=-2;
            end
      initial // rst signal control
        begin
        rst=1;
        #7  
        rst=0;
        end
        
        
        
endmodule
