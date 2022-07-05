module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //A signed overflow occurs when adding two positive numbers produces a negative result,
    //or adding two negative numbers produces a positive result(a=b(last bits) and difference between input(a or b) with s.
 
    assign s = a + b;
    assign overflow = s[7]!=a[7] && a[7]==b[7] ; 

endmodule
