module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire t;
    wire [15:0]p,q;
    add16 jk1( .a(a[15:0] ), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(t) );
    add16 jk2( .a(a[31:16] ), .b(b[31:16]), .cin(1'b0), .sum(p[15:0]), .cout() );
    
    add16 jk3( .a(a[31:16] ), .b(b[31:16]), .cin(1'b1), .sum(q[15:0]), .cout() );
    

    
    assign sum[31:16] = t ? q : p;
endmodule
