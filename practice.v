module practice( s,r,q
 );
  input s,r;
  output reg q;
  
  initial
  q=1;
  
  always@(*) begin
 if(s==1 & r==1)
 q=q;
else
 if(s==0 & r==1)
 q=0;
 else
 if(s== 1& r==0)
 q=1;
 else
 q=1'bx;
 
 
 end
 //testbench
 module testbench;
reg s,r;

wire q;
practice uut(s,r,q);

initial
begin
 $monitor($time,"s=%b,r=%b,q=%b",s,r,q);
 s=1;r=1;
#10 s=0;r=1;
 #10s=1;r=0;
  #10s=0;r=0;
 
 #10 $finish;
 end
 
endmodule
 
    
