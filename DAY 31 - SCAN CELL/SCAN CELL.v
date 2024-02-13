`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 17:30:57
// Design Name: 
// Module Name: SCAN CELL
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


module SCANCELL(d,si,se,clk,reset,so);
input d,si,se,clk,reset;
output so;
wire mo;

MUX2x1 A(se,d,si,mo);
D_FlipFlop B(mo,clk,reset,so);

endmodule
