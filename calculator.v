module calculator(
    input [31:0] a, b,
    output reg [31:0] out,
    input add, sub, mul, dev
); reg [15:0]q,r;
   always@(a,b,add,sub,mul,dev)
   begin
   if(add)
   out=a+b;
   else
    if(sub)
   out=a-b;
   else
    if(mul)
   out=a*b;
   else
   if(dev) begin
   q=a/b; r=a%b; 
   out={q,r};
   end
   else
   $display("error");
   end  
endmodule
