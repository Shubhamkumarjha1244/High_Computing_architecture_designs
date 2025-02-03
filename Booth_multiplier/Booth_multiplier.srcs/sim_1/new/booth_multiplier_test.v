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
    reg clk=0;
    parameter size=32;
    reg[size-1:0] multiplier,multiplicand;
    reg[6:0]counter=0;
    wire[(2*size)-1:0] product;
  
    
    
    booth_multiplier_n_bit_functional dut(clk,multiplier,multiplicand,product);
    
    always
        #5 clk=~clk;
    always @(posedge clk)
        if(counter!=size+1)
            counter=counter+1;
        else
            $finish;
 
    initial
        begin
        multiplier=$random;
        multiplicand=$random;
        end
        

endmodule
