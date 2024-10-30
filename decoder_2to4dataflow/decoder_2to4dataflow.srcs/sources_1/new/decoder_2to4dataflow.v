`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 01:54:58 PM
// Design Name: 
// Module Name: decoder_2to4dataflow
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


module decoder_2to4dataflow(
    output [3:0] y,
    input [1:0] i,
    input en
    );
    assign y={ en & i[1] &i[0],
    en & i[1] & ~i[0],
    en & ~i[1] &i[0],
    en & ~i[1] &~i[0]};
endmodule
