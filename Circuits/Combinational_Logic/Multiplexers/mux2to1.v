module top_module( 
    input a, b, sel,
    output out ); 

    //sel=0 --> a, sel=1 --> b
    assign out = sel ? b : a;
    
endmodule
