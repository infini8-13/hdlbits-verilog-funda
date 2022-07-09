module top_module ( );
    reg clk;
    dut ins (.clk(clk));
	initial clk = 0;   
    always #5 clk = ~clk;
    
endmodule
