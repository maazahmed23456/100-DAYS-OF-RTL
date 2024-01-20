`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 18:42:23
// Design Name: 
// Module Name: SHIFT_REG_TB
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


module testbench;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in time units
  
  // Inputs
  reg clk;
  reg rst;
  reg din;
  reg [1:0] sel;
  
  // Outputs
  wire [3:0] d_out;
  
  // Instantiate the SHIFT_REG module
  SHIFT_REG uut (
    .clk(clk),
    .rst(rst),
    .din(din),
    .sel(sel),
    .d_out(d_out)
  );
  
  // Clock generation
  initial begin
    clk = 0;
    forever #((CLK_PERIOD / 2)) clk = ~clk;
  end
  
  // Test case generation
  initial begin
    // Initialize inputs
    rst = 1;
    din = 4'b1010;
    sel = 2'b00;
    
    // Apply reset
    #10 rst = 0;
    
    // Case 1: sel = 2'b00 (No shift)
    #10 sel = 2'b00;
    
    // Case 2: sel = 2'b01 (Left shift)
    #10 sel = 2'b01;
    din = 1'b1;
    
    // Case 3: sel = 2'b10 (Right shift)
    #10 sel = 2'b10;
    din = 1'b1;
    
    // Case 4: sel = 2'b11 (Reset)
    #10 sel = 2'b11;
    
    // Add more test cases if needed
    
    // Finish simulation
    #100 $finish;
  end
  
endmodule
