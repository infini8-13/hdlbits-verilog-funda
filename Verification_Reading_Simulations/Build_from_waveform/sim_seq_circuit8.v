module top_module (
    input clock,
    input a,
    output p,
    output q );

    //Inferring latch(level-sensitive)
    always@(clock) begin 
        if(clock)begin
            p<=a;
        end
    end  
    
    //Inferring FF
    always@(negedge clock)begin
    	q<=a;
    end
        
                
endmodule
