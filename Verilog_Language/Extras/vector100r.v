module top_module( 
    input [99:0] in,
    output [99:0] out
);

    always@(*) begin
        //$bits() can be used to return the width of the signal.
        //$bits(out) gives 100.
        for(int i=0;i<100;i++) begin
            out[99-i]=in[i];
    	end
    end    

endmodule
