module top_module( 
    input [254:0] in,
    output [7:0] out );
	
    always@(*) begin
        out = 7'b0;
        for(int i = 0; i<$bits(in); i++) begin
            //out = out + in[i]; Works like a charm.
            if(in[i])
           	 out=out+1'b1;   
        end
    end
    
endmodule
