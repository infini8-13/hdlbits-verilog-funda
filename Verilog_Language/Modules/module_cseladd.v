//Carry-Select Adder
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout, c0, c1;
    wire [15:0] sum1, sum2;
    add16 a1(a[15:0]  , b[15:0] , 1'b0, sum[15:0], cout);
    add16 a2(a[31:16] , b[31:16], 1'b0, sum1,  c0);
    add16 a3(a[31:16] , b[31:16], 1'b1, sum2, c1);
    
    //when cout is true(1), a3(sum2) is selected.
    assign sum[31:16] = cout ? sum2 : sum1;
    
endmodule
