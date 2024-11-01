`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 11:26:58 AM
// Design Name: 
// Module Name: counter_beh
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


module counter_beh(
    output [7:0] count,
    input clk,
    input rst
    );
  reg [7:0] count_temp;
  always@(posedge clk)
  if(!rst)
  count_temp<=8'd0;
  else
  count_temp<=count_temp+1;
  assign count=count_temp; 
endmodule
