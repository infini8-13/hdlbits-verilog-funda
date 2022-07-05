module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [3:0]co;
    assign cout = co[3];
    bcd_fadd f0(.a(a[3:0]),
                .b(b[3:0]),
                .cin(cin),
                .cout(co[0]),
            	.sum(sum[3:0])
         	  ); 
    	
    bcd_fadd f1(.a(a[7:4]),
                .b(b[7:4]),
            	.cin(co[0]),
            	.cout(co[1]),
           		.sum(sum[7:4])
          	 );     
    
    bcd_fadd f2(.a(a[11:8]),
                .b(b[11:8]),
            	.cin(co[1]),
            	.cout(co[2]),
           	    .sum(sum[11:8])
          	 );  
    
    bcd_fadd f3(.a(a[15:12]),
                .b(b[15:12]),
            	.cin(co[2]),
                .cout(co[3]),
            	.sum(sum[15:12])
           	 );    

endmodule

