module top_module (
    input a,
    input b,
    input c,
    input d,
    output q );//

    assign q = ~(a^b^c^d); // Determined by even number of 1's whenever output is 1. Satisfied all conditions-hence XNOR.

endmodule
