`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:13:13
// Design Name: 
// Module Name: SIPO
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

module SIPO(input clk,b,output[3:0]q);

d_ff dut1(.clk(clk),.d(b),.q(q[3]),.rst());
d_ff dut2(.clk(clk),.d(q[3]),.q(q[2]),.rst());
d_ff dut3(.clk(clk),.d(q[2]),.q(q[1]),.rst());
d_ff dut4(.clk(clk),.d(q[1]),.q(q[0]),.rst());

endmodule
// d flip flop

module d_ff (
  input clk,    
  input d,      
  input rst,    
  output reg q);

  always @(posedge clk) 
  begin
    if (rst)
      q <= 1'b0;
    else
      q <= d;
  end

endmodule