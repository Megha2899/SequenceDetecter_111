`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2023 21:21:04
// Design Name: 
// Module Name: Sequence_111
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


module Sequence_111(
in,out,clk
    );
    input in,clk;
    output reg out;
     reg q1=0;
     reg q2=0;

     always@(posedge clk)
     begin
       q1 <= in & (q1 | q2);
       q2 <= in & (q1 | (~q2));
       out=in&q1;
      end 
endmodule
