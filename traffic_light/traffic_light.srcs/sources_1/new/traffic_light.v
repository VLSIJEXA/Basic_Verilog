`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2024 01:38:03 PM
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(clk,light

    );
    input clk;
    output reg [0:2] light;
    parameter s0=0,s1=1,s2=2;
    parameter red=3'b100,green=3'b010,yellow=3'b001;
    reg [0:1] state;
    always @(posedge clk)
    case(state)
    s0: begin
     state<= s1;
     end
     s1: begin
     state<=s2;
     end
     s2: begin
   state<=s0;
     end
     default: begin
     state<=s0;
     end
     endcase
     
     
      always @(state)
    case(state)
    s0: light =red;
     s1: light = green;
     s2: light=yellow; 
     default: light =red;
       endcase 
       
       
endmodule
