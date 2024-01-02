`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2024 14:21:36
// Design Name: 
// Module Name: MULTIPLIER_TB
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


module FourBitMultiplier_TB;

  // Inputs
  reg [3:0] a, b;
  
  // Outputs
  wire [7:0] product;

  // Instantiate the FourBitMultiplier module
  FourBitMultiplier uut(
    .a(a),
    .b(b),
    .product(product)
  );

  // Clock generation
  reg clk = 0;
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    // Initialize inputs
    a = 4'b1010; // Change the input values as needed
    b = 4'b0011; // Change the input values as needed

    // Apply stimulus
    #10 a = 4'b1100; // Change the input values as needed
    #10 b = 4'b0101; // Change the input values as needed
    
    #10 a = 4'b1000; // Change the input values as needed
    #10 b = 4'b0111; // Change the input values as needed
    
    #10 a = 4'b1101; // Change the input values as needed
    #10 b = 4'b1101; // Change the input values as needed

    // Add more test cases as needed

    // Display results
    $display("Result: %b * %b = %b", a, b, product);

    // End simulation
    #10 $finish;
  end

endmodule
