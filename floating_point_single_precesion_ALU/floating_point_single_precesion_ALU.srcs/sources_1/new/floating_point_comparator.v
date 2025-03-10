`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT PATNA
// Engineer: SHUBHAM KUMAR JHA (2411EE22)
// 
// Create Date: 05.02.2025 21:18:51
// Design Name: 
// Module Name: floating_point_comparator
// Project Name: FLOATING POINT ALU
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


module floating_point_comparator(float1,float2,greater,smaller,equal);
    
    input[31:0] float1,float2; //single precesion IEEE 754 floating point representation input
    output greater,smaller,equal; //output greater=1 when float1>float2
                                  //smaller=1 when float1<float2
                                  //equal=1 when float1=float2
    wire sign1,sign2; //sign data wire
    wire[7:0] exponent1,exponent2; //exponent data wire
    wire[22:0] mentissa1,mentissa2; //mentissa data wire

    wire greater_both_neg,greater_both_not_neg;   //internal wire
        
        //assignment in each wire from input                      
        assign sign1=float1[31];
        assign sign2=float2[31];
        assign exponent1=float1[30:23];
        assign exponent2=float2[30:23];
        assign mentissa1=float1[22:0];
        assign mentissa2=float2[22:0];
        
  
 
 //sending into different  logic cases (both negative & all other)
        assign greater=(sign1&sign2)?greater_both_neg:greater_both_not_neg;      
        
 //logic  when both are not negative      
        //logic to check Float1>Float2
        assign greater_both_not_neg=(sign1<sign2)?1'b1:(sign1>sign2)?1'b0:((exponent1>exponent2)?1'b1:(exponent1<exponent2)?1'b0:((mentissa1>mentissa2)?1'b1:1'b0));
 //logic when both are negative       
        //logic to check Float1>Float2
        assign greater_both_neg=(exponent1<exponent2)?1'b1:(exponent1>exponent2)?1'b0:((mentissa1<mentissa2)?1'b1:1'b0);
        

        
         
//logic to check Float2==Float1
       assign equal=(sign1==sign2) & (exponent1==exponent2) & (mentissa2==mentissa1);
//logic to check Float1<float2
        assign smaller=~(greater|equal);
            
endmodule
