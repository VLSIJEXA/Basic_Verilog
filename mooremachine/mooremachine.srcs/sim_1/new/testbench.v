`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 02:30:36 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
 reg clk,inp, reset;
    wire det;

mooremachine uut(det,inp,clk,reset);

   always #5 clk=~clk;
   initial begin
   clk=1'b0;
    end
    
   initial begin
   reset=1'b1;
   #15 reset=1'b0;
  
   end
   
   initial begin
   $monitor($time,"%b",det);
    #12 inp=0; #10 inp=0; #10 inp=1;
     #10 inp=0; #10 inp=0; #10 inp=1;
      #10 inp=0; #10 inp=0; #10 inp=1;
      #10 $finish;
   end
endmodule
