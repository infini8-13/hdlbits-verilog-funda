module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    genvar i;
    wire [99:0]co_tmp;
    
    bcd_fadd m1(.a(a[3:0]),
                 .b(b[3:0]),
                 .cin(cin),
                 .cout(co_tmp[0]),
                 .sum(sum[3:0])
               );
    generate
        for(i=1;i<100;i++)begin : bcdadd
            bcd_fadd m2 (.a(a[4*i +:3]),
                         .b(b[4*i +:3]),
                         .cin(co_tmp[i-1]),
                         .cout(co_tmp[i]),
                         .sum(sum[4*i +:3])
                        );
        end   
    endgenerate
    assign cout = co_tmp[99]; 
endmodule
