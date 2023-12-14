`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 21:52:36
// Design Name: 
// Module Name: JOHNSON_COUNTER
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


module JOHNSON_COUNTER(clk,reset,count);
  //Johnson counter can be implement for any number of bits by changing  Width Parameter.Initially it was 4.
parameter WIDTH=4;
  //inputs
input clk,reset;
  //outputs
output reg [WIDTH-1:0] count;

always@(posedge clk)
begin
if(reset)
count={~count[0],count[WIDTH-1:1]};
else 
count=1;
end
endmodule
