`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 07:17:40 AM
// Design Name: 
// Module Name: DFF_posedge_asy_activelowrst_beh
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


module DFF_posedge_asy_activelowrst_beh(
    input rst,d,clk,
    output reg q
    );
    always@(posedge clk or negedge rst)
    if(!rst)
    q<=1'b0;
    else
     q<=d;
    
endmodule
