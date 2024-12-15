`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// JATIN KATIYAR
// Create Date: 12/15/2024 01:27:49 PM
// Design Name: 
// Module Name: mealymachine
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


module mealymachine(det,inp,clk,reset);
    input clk,inp, reset;
    output reg det;
    parameter s0=2'b00 ,s1=2'b01, s2=2'b10;
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
    nxt_state=s0;
    else
    nxt_state=s2;
    default: nxt_state=s0;
    endcase
////////////////////
always@(inp,pr_state)
case(pr_state)
s0:det=0;
s1:det=0;
s2:if(inp)
 det=1;
else
 det=0;
 default: det=0;
 endcase
 


    
    
endmodule
