module top_module (input a, input b, input c, output out);//

    wire tmp;
    andgate inst1 ( tmp, a, b, c, 1'b1, 1'b1 );
    assign out = ~tmp;
endmodule
