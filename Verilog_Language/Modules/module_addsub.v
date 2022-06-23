module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire cout, c0;
    wire [31:0] b1;
    wire [15:0] sum1, sum2;
    add16 a1(a[15:0]  , b1[15:0] , sub , sum[15:0], cout);
    add16 a2(a[31:16] , b1[31:16], cout, sum[31:16],  c0);
    assign b1 = b^{32{sub}}; 
    //assign b1 = sub ? (~b) : b;    

    
endmodule
