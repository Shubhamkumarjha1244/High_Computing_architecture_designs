`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT PATNA
// Engineer: SHUBHAM KUMAR JHA
// 
// Create Date: 05.02.2025 21:59:47
// Design Name: 
// Module Name: floating_point_comparator_tb
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


module floating_point_comparator_tb();
    reg[31:0] float1,float2;
    wire [31:0] result;
//    wire greater,smaller,equal;
    
//    floating_point_comparator dut(float1,float2,greater,smaller,equal); //dut initialization
    
    floating_point_multiplier dut(float1,float2,result);
    
    
    
    
    
    initial
        begin
            float1=32'h414c0000; //float1=12.750
            float2=32'hc14c0000; //float2=-12.750
            #10
            float1=32'hba313598; //float1=-0.000676
            float2=32'h47d95180; //float2=111267.00001
            #10
            float1=32'h4bbf3536; //float1=25061997.000001244
            float2=32'h4bbf3536; //float2=25061997.000001244
            #10
            float1=32'h4b65d3ed;    //float2=15061997.000001244
            float2=32'h4bbf3536;    //float1=25061997.000001244
            #10
            float1=32'hb88dc479; //float1=-0.0000676
            float2=32'hb74e5c19; //float2=-0.0000123
            #10
            float1=32'h6a8ccaf6; //float1=25.061997*(10^23)
            float2=32'h62467c50; //float2=25.061997*(10^20)
            #10
            float1=32'hbf800000; //float1=-1
            float2=32'hc0c00000; //float2=-6
            #10
            $finish;
       end
endmodule
