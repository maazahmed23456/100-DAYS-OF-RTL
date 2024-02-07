`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 14:51:32
// Design Name: 
// Module Name: SA_TB
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


`timescale 1s/100ns

module serial_adder_tb;
  reg [3:0] data_a, data_b;
  reg clk, reset;

  wire [3:0] out;
  wire cout;

  serial_adder s_adder(data_a, data_b, clk, reset, out, cout);

  initial begin
    $monitor("data_a = %4b, data_b = %4b, reset = %b, out=%b", data_a, data_b, reset, out);
    $dumpfile("serial_adder_tb.vcd");
    $dumpvars(0, serial_adder_tb);
    clk = 0;
    data_a = 4'b1010; data_b = 4'b1010; reset = 1; #20;
    data_a = 4'b1100; data_b = 4'b1101; reset = 0; #200;
    $finish;
  end

  always #10 clk = !clk;

endmodule