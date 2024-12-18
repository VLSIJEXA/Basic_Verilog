
module exa(clk,int,count);
input clk,int;
output reg [7:0]count;
always@(posedge clk)
begin
if(int)
 count =8'b10000000;
else begin
   count <=count<<1;
   count<=count[7];
end
    end
endmodule
