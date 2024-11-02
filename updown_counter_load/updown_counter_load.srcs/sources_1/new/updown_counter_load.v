`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 06:34:04 AM
// Design Name: 
// Module Name: updown_counter_load
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


module updown_counter_load(
    output [7:0] count,
    input u_d,
    input load,
    input clk,
    input rst,
    input [7:0] data
    );reg [7:0] count_temp;
 always@(posedge clk)
  if(!rst | count_temp>=8'd40| count_temp<=8'd10 )
  count_temp<=8'd0;
  else if(load)
  count_temp<=data;
  else if(u_d)
  count_temp<=(count_temp>=40)?8'd10:count_temp+1;
  else
  count_temp<=(count_temp<=8'd10)?8'd40:count_temp-1;
  assign count=count_temp; 
endmodule
