module practice( a,b,gt,lt,eq
 );
  input [1:0]a,b;
  output reg gt,lt,eq;
  always@(a,b)begin
  gt=(a>b);
  lt=(a<b);
  eq=(a==b);
  end
endmodule
//testbench
module testbench;
reg [1:0]a,b;

wire gt,lt,eq;
practice uut(a,b,gt,lt,eq);

initial
begin
 $monitor($time,"a=%2b,b=%2b,gt=%b,lt=%b,eq=%b",a,b,gt,lt,eq);
 a=11;b=01;
#10 a=11;b=10;
 #10a=00;b=01;
 
 #10 $finish;
 end
 
endmodule
