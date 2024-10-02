`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 03:10:59 PM
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;
    reg a,b;
    wire s,c;
    halfadder_str uut(.A(a),.B(b),.S(s),.C(c));
    initial
    begin
    $monitor("time=%d \t a =%b\tb=%b,s=%b,c=%b", $time,a,b,s,c);
    a=0;
    b=0;
    #10 a=1;
    #10 b=1;
    #10 $stop;
    end
    
endmodule
