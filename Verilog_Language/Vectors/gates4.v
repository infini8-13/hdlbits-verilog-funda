module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);

  assign out_and = (in[3:0] == 4'b1111); //logical AND of an array will lead to 1(true) only when all bits are 1
  assign out_or  = (in[3:0] != 4'b0);    //logical OR of an array will lead to 1(true) only when the whole in[3:0] is not zero
  assign out_xor = in[3]^in[2]^in[1]^in[0];
    
endmodule
