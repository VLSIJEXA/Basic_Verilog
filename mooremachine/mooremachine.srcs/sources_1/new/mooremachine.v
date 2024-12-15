`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 02:29:01 PM
// Design Name: 
// Module Name: mooremachine
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


module mooremachine(det,inp,clk,reset);
    input clk,inp, reset;
    output reg det;
    parameter s0=2'b00 ,s1=2'b01, s2=2'b10,s3=2'b11;
    reg [1:0]pr_state,nxt_state;
    //////////////////////
    always@(posedge clk)
    if(reset)
    pr_state<=s0;
    else
    pr_state<=nxt_state;
    //////////////////
    
    always@(inp,pr_state)
    case(pr_state)
    s0:if(inp) 
    nxt_state=s0;
    else
    nxt_state=s1;
    s1:if(inp) 
    nxt_state=s0;
    else
    nxt_state=s2;
    s2:if(inp) 
    nxt_state=s3;
    else
    nxt_state=s2;
    s3: if(inp)
    nxt_state=s0;
    else 
    nxt_state=s1;
    default: nxt_state=s0;
    endcase
////////////////////
always@(inp,pr_state)
case(pr_state)
s0:det=0;
s1:det=0;
s2:det=0;
s3:det=1;
 default: det=0;
 endcase 
endmodule

