`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2024 14:20:01
// Design Name: 
// Module Name: MULTIPLIER
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


module FourBitMultiplier(
  input [3:0] a, b,
  output reg [7:0] product,
  integer i
);
  
  always @(a or b) begin
    product = 0; // Initialize product to zero
    for (i = 0; i < 4; i = i + 1) begin
      if (b[i] == 1) begin
        product = product + (a << i);
      end
    end
  end
  
endmodule
