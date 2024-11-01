`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 11:41:02 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
reg clk,rst;
wire [7:0]count;
counter_beh c1(.clk(clk),.rst(rst),.count(count));
always #5 clk=~clk;  //clock invtering
initial begin
clk=0;
rst=1;
#10 rst=0;
#20 rst=1;
#100 $stop;
end
endmodule
