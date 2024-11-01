`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 09:04:39 AM
// Design Name: 
// Module Name: DFF_synch_activelowreset_activehighset_beh
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


module DFF_synch_activelowreset_activehighset_beh(
    input d,clk,set,rst,
    output reg q
    );
    always@(posedge clk)
   if(!rst)
   q<=1'b0;
   else if(set)
   q<=1'b1;
   else
   q<=d; 
endmodule
