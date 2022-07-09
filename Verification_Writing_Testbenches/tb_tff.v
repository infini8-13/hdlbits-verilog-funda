module top_module ();
    
	reg clk, rst, t;
    wire q;
    
    
    
    tff dut (.clk(clk),
             .reset(rst),
             .t(t), //active-high synchronous reset 
             .q(q));
    
    always #5 clk = ~clk;
    
    initial begin
      clk = 0; rst = 1; t = 0;
      #12 rst = 0; t = 1;    
    end
     
endmodule
