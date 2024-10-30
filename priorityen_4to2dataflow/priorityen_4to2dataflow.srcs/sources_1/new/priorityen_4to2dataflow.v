`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 03:54:33 PM
// Design Name: 
// Module Name: priorityen_4to2dataflow
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


module priorityen_4to2dataflow(
    output [1:0] y,
    input v,
    input [3:0] i
    );
    assign {v,y}=i[0]?3'b100:i[1]?3'b101:i[2]?3'b110:i[3]?3'b111:3'b000;
endmodule
