//noticed the logic held valid during the segment where b is 1 and goes off when c goes 1 simultaneously.
module top_module (
    input a,
    input b,
    input c,
    input d,
    output q );//

    assign q = b | c; // Fix me

endmodule
