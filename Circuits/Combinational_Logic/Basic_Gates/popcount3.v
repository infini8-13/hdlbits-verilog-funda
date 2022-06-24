module top_module( 
    input [2:0] in,
    output [1:0] out );
    
	  //this basically a 3-bit adder or a full adder
    //out[0]-->sum, //out[1]-->carry
    assign out[0] = ^in[2:0];
    assign out[1] = in[0]&in[1] | in[1]&in[2] | in[2]&in[0];  
     
    
endmodule
