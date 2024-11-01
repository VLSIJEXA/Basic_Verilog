`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 02:21:56 PM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input [7:0] data,
    input clk,u_d,rst,load,
    output [7:0] count
    );
    reg [7:0] count_temp;
  always@(posedge clk)
  if(!rst)
  count_temp<=8'd0;
  else if(load)
  count_temp<=data;
  else if(u_d)
  count_temp<=count_temp+1;
  else
  count_temp<=count_temp-1;
  
  assign count=count_temp; 
    
endmodule
