module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    //assign out_both = {&in[3:2], &in[2:1], &in[1:0]};
    //assign out_any  = {|in[3:2], |in[2:1], |in[1:0]};
    //assign out_different = {in[0]^in[3], ^in[3:2], ^in[2:1], ^in[1:0]};
  
	  assign out_any = in[3:1] | in[2:0];
	  assign out_both = in[2:0] & in[3:1];
	  assign out_different = in ^ {in[0], in[3:1]};
	     

endmodule
/*
out_both: Each bit of this output vector should indicate whether both the corresponding input bit and its neighbour to the left (higher index) are '1'. For example, out_both[2] should indicate if in[2] and in[3] are both 1. Since in[3] has no neighbour to the left, the answer is obvious so we don't need to know out_both[3].
out_any: Each bit of this output vector should indicate whether any of the corresponding input bit and its neighbour to the right are '1'. For example, out_any[2] should indicate if either in[2] or in[1] are 1. Since in[0] has no neighbour to the right, the answer is obvious so we don't need to know out_any[0].
out_different: Each bit of this output vector should indicate whether the corresponding input bit is different from its neighbour to the left. For example, out_different[2] should indicate if in[2] is different from in[3]. For this part, treat the vector as wrapping around, so in[3]'s neighbour to the left is in[0].
*/
