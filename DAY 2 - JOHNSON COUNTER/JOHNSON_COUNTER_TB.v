`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 21:53:47
// Design Name: 
// Module Name: JOHNSON_COUNTER_TB
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


module JOHNSON_COUNTER_TB();
parameter WIDTH=4;
reg clk,reset;
wire [WIDTH-1:0] count;
JOHNSON_COUNTER dut(clk,reset,count);
always #10 clk=~clk;
initial
begin
reset=0;
clk=0;
 $monitor ("T=%0t out=%b", $time, count);
 #50 reset=1;
 end
 endmodule