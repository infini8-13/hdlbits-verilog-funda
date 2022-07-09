module top_module();
 	reg clk, in;
    reg [2:0] s;
    wire out;
    
    q7 dut(.clk(clk),
           .in(in),
           .s(s),
           .out(out)
          );
    
    initial begin
       clk = 0;
       in = 0; s = 3'd2;
       #10 s = 3'd6;
       #10 in = 1; s = 3'd2; 
       #10 in = 0; s = 3'd7; 
       #10 in = 1; s = 3'd0;
       #30 in = 0; 
    end
    always #5 clk = ~clk;
endmodule
