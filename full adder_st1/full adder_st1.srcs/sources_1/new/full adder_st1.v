`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 02:16:32 PM
// Design Name: 
// Module Name: full adder_st1
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


module fulladder_st1(a,b,c,sum,cout);
    input a,b,c;
     output sum,cout;
     wire n1,n2,n3,n4 ;
               xor xor1(n1,a,b);
              xor xor2(s,n1,c);
              and and1(n2,a,b);
               and and2(n3,b,c);
                  and and3(n4,c,a);
                  or or1(c,n2,n3,n4);
                  
     
   
endmodule
