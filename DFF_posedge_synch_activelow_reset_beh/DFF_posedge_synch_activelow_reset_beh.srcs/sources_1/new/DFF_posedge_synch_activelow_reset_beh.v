`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 08:58:53 AM
// Design Name: 
// Module Name: DFF_posedge_synch_activelow_reset_beh
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


module DFF_posedge_synch_activelow_reset_beh(
    output reg q,
    input d,clk,rst
    );
    always@(posedge clk)
   if(!rst)
   q<=1'b0;
   else
   q<=d; 
endmodule
