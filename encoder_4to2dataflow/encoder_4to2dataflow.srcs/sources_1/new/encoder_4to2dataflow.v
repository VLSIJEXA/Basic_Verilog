`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 03:26:26 PM
// Design Name: 
// Module Name: encoder_4to2dataflow
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


module encoder_4to2dataflow(
    output [1:0] y,
    output v,
    input [3:0] i
    );
    assign y={i[3]|i[2],i[3]|i[1]};
    assign v=|i;
endmodule
