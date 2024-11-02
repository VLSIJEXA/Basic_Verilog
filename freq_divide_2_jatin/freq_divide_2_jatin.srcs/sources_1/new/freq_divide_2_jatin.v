`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 06:54:08 AM
// Design Name: 
// Module Name: freq_divide_2_jatin
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


module freq_divide_2_jatin(
    output  reg clkout,
    input clk,
    input rst
    );
    always@(posedge clk )
    if(rst)
    clkout<=0;
    else
    clkout<=~clkout;
    
endmodule
