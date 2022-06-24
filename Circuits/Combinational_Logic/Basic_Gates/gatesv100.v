module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );

    //similar to gatesv.v
    assign out_any = in[99:1] | in[98:0];
    assign out_both = in[98:0] & in[99:1];
    assign out_different = in ^ {in[0], in[99:1]};  
    
endmodule