//lower modules from simplecircuitA.v and simplecircuitB.v
module top_module (input x, input y, output z);
    wire[3:0] z0;
    cktA A1(x, y, z0[0]);
    cktB B1(x, y, z0[1]);
    cktA A2(x, y, z0[2]);
    cktB B2(x, y, z0[3]);
    
    assign z = (|z0[1:0]) ^ (&z0[3:2]);
    
endmodule

module cktA (input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module cktB ( input x, input y, output z );
    assign z = ~(x^y);
endmodule
