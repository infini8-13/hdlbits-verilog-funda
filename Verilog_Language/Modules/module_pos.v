module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

    //By position
    mod_a inst1 (out1, out2, a, b, c, d);
    
    //By name
    /*
      mod_a inst1 (.out1(out1), 
                   .out2(out2), 
                   .a(a), 
                   .b(b), 
                   .c(c), 
                   .d(d)
                  );
    */
endmodule
