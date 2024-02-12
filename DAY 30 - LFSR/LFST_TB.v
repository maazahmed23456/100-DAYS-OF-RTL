`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2024 21:47:02
// Design Name: 
// Module Name: LFST_TB
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


module TB;
  reg clk, rst;
  wire [3:0]op;
  
  LFSR lfsr1(clk, rst, op);
  
  initial begin
    $monitor("op=%b",op);
    clk = 0; rst = 1;
    #5 rst = 0;
    #50; $finish;
  end
  
  always #2 clk=~clk;
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule