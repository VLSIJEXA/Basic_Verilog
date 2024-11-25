module practice;
reg clk;

   initial 
   begin
   clk=1'b0;
   repeat(100)
   #5 clk=~clk;
   end
   
   
endmodule
