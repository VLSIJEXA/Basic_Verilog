timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 12:04:23 PM
// Design Name: 
// Module Name: upcounter_load_beh
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


module upcounter_load_beh(
    output [7:0] count,
    input clk,load,rst,
    input [7:0] data
    );
    reg [7:0] count_temp;
  always@(posedge clk)
  if(!rst)
  count_temp<=8'd0;
  else if(load)
  count_temp<=data;
  else
  count_temp<=count_temp+1;
  assign count=count_temp; 
endmodule
