`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 07:03:38 AM
// Design Name: 
// Module Name: DFF_posedge_asyn_activehighrst_beh
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


module DFF_posedge_asyn_activehighrst_beh(
    input rst,clk,d,
    output reg q
    );
    always@(posedge clk or posedge rst)
    if(rst)
    q<=1'b0;
    else
    q<=d;
endmodule
