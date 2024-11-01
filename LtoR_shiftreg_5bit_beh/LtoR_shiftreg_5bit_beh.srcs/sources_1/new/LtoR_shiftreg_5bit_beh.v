`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:31:42 AM
// Design Name: 
// Module Name: LtoR_shiftreg_5bit_beh
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


module LtoR_shiftreg_5bit_beh(
    output so,
    input si,clk,rst
    );
    reg [4:0]sr;
    
    always@(posedge clk,negedge rst)
    if(!rst)
    sr<=5'd0;
    else
    sr<={sr[3:0],si};
    assign so=sr[4];
    
    
endmodule
