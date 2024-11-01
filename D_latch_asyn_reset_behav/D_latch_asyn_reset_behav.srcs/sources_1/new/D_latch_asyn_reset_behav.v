`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 09:43:08 PM
// Design Name: 
// Module Name: D_latch_asyn_reset_behav
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


module D_latch_asyn_reset_behav(
    input en,
    input rst,
    output reg q,
    input d
    );
    always@(en,rst,d)
    if(rst)
    q=1'b0;
    else if(en)
    q=d;
endmodule
