`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.02.2024 14:41:48
// Design Name: 
// Module Name: TESTBENCH
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

module convolutional_encoder_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units
    
    // Signals
    reg [4:0] x; // 3-bit input with 00 padded at start and end
    wire [5:0] y; // Encoded output
    
    // Instantiate the convolutional_encoder module
    convolutional_encoder uut (
        .x(x),
        .y(y)
    );
    
    // Clock generation
    reg clk = 0;
    always #((CLK_PERIOD)/2) clk = ~clk; // Toggle clock every half period
    
    // Test stimulus
    initial begin
        // Test vectors
        x = 6'b000000; // Input: 00000
        #10; // Wait for 10 time units
        x = 6'b100001; // Input: 10000
        #10; // Wait for 10 time units
        x = 6'b010010; // Input: 01000
        #10; // Wait for 10 time units
        x = 6'b110011; // Input: 11000
        #10; // Wait for 10 time units
        $stop; // Stop simulation
    end
    
    // Display outputs
    always @(posedge clk) begin
        $display("Input: %b, Output: %b", x, y);
    end
    
endmodule

