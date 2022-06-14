// 100-bit wide, 2-to-1 multiplexer
module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    
    assign out = sel ? b : a;
  //assign out = (~{100{sel}} & a) | ({100{sel}} & b);
  //Synthesis of both the above statements lead to same schematic
	
endmodule
