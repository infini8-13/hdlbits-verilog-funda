// synthesis verilog_input_version verilog_2001
module top_module ( 
    input do_sub,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out,
    output reg result_is_zero
);//

    always @(*) begin
        out = 0;
        case (do_sub)
          1'b0: out = a+b;
          1'b1: out = a-b;
        endcase
        
        if (out==0)
            result_is_zero = 1;
        else
            result_is_zero = 0;
    end

endmodule
