
module bough_wooley_tb();
    parameter size=32;
    
    reg[size-1:0] input1,input2;
    wire [(2*size)-1:0] product;
    woogh_boogly dut(input1,input2,product);
    initial
        begin
            input1=8;
            input2=3;
            #10
            input1=-2;
            input2=-3;
            #10
            input1=4;
            input2=3;
            #10
            input1=25061997;
            input2=-22071996;
            #10
            $finish;
        end
endmodule

    
//module last_block_tb();

//    parameter size=4;
//    reg [size-3:0] sum_in;
//    reg [size-2:0] carry_in;
//    reg x,y;
//    wire [size-1:0] out;
//    last_fa dut(sum_in,carry_in,x,y,out);
    
//    initial
//        begin
//            sum_in=2'b10;
//            carry_in=3'b110;
//            x=1'b1;
//            y=1'b1;
//        end
    
//endmodule


//module block_test_tb();
//parameter size=8;
//reg[size-1:0] arr;
//reg inn;
//wire[size-1:0] out;

////to check and_block
//    and_block dut(arr,inn,out);
////to check Nand_block
////    nand_block dut(arr,inn,out);
//initial
//    begin
//    arr=8'b11111010;
//    inn=1'b0;
//    #10
//    arr=4'b000001010;
//    inn=1'b1;
//    end
//endmodule


//module horizontal_full_adder_block_test_tb();
//    parameter size=31;
//    reg[size-1:0] vertical_inn,horizontal_inn,carry_in;
//    wire[size-1:0] sum,carry_out;
    
    
//   adder_block dut(vertical_inn,horizontal_inn,carry_in,sum,carry_out);
        
           
//    initial
//        begin
//            vertical_inn=7'b1111111;
//            horizontal_inn=7'b11111111;
//            carry_in=7'b1111111;
//            #10
//            vertical_inn=7'b1111111;
//            horizontal_inn=7'b1111111;
//            carry_in=7'b0000000;
//        end
        
//endmodule
