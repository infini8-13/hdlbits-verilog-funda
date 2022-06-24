//Reduction Operators for Vectors
module top_module (
    input [7:0] in,
    output parity); 

    //XOR of all 8 bits of in
    assign parity = ^in[7:0];
    
endmodule
