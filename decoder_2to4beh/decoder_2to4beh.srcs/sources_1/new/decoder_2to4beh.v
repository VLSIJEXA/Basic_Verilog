`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 02:06:47 PM
// Design Name: 
// Module Name: decoder_2to4beh
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


module decoder_2to4beh(
    output reg [3:0] y,
    input en,
    input [1:0] i
    );
    always @(*) begin
    case({en ,i})
       3'b100: y=4'b0001;
              3'b101: y=4'b0010;
                     3'b110: y=4'b0011;
                            3'b111: y=4'b1000;
                                   3'b000,
                                          3'b001,
                                                 3'b010,
                                                        3'b011: y=4'b0001;
                                                        default:$display("error");
                                                        endcase
                                                        end
endmodule
