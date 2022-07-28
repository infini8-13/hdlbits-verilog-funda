//Decade Counter with Synchronous reset
module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);

    always@(posedge clk)begin
        if(reset | q[0]&q[3]) //0 to 9 counter reset functionality, 9 is 1001.
            q <= 0;
        else
            q <= q + 1;
    end
    
endmodule
