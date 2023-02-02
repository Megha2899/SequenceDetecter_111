`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2023 21:41:05
// Design Name: 
// Module Name: sequence_111_tb
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


module sequence_111_tb;

reg in,clk;
wire out;

Sequence_111 dut(in,out,clk);

always #10 clk=~clk;
initial
begin
   clk=0;
   in=0;
   
   @(posedge clk) in<=1;
   @(posedge clk) in<=0;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=0;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=0;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=1;
   @(posedge clk) in<=0;
 $finish;  
end
endmodule
