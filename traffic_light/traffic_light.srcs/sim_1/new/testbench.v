`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2024 01:47:53 PM
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
 reg clk;
  wire [0:2] light;
   
    traffic_light utt (clk,light

    );
 
   always #5 clk=~clk; 
    initial
    begin
    clk=1'b0;
    #100 $finish;
    end
    
    
    initial 
    
    begin
    $monitor($time,"%b",light);
    end
    
      
endmodule
