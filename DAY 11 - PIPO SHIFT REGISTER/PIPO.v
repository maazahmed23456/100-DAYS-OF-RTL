`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 21:16:35
// Design Name: 
// Module Name: PIPO
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


module PIPO(clk,clear,d,q);

input clk,clear;

output reg [3:0]  q;
input [3:0] d;


always @(posedge clk )
begin
if (clear)

q=  4'b0000;


else


q=d;
end


endmodule