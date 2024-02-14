`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 18:52:26
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


module multiplier_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units

    // Signals
    reg [2:0] a, b;
    wire [5:0] p;

    // Instantiate the multiplier module
    multiplier dut (
        .a(a),
        .b(b),
        .p(p)
    );

    // Clock generation
    reg clk = 0;
    always #((CLK_PERIOD / 2)) clk = ~clk;

    // Test vectors
    initial begin
        // Test vector 1
        a = 3'b001; // 1
        b = 3'b001; // 1
        #20; // Wait for multiplication
        if (p !== 6'b000001) $display("Test 1 failed!");

        // Test vector 2
        a = 3'b010; // 2
        b = 3'b001; // 1
        #20; // Wait for multiplication
        if (p !== 6'b000010) $display("Test 2 failed!");

        // Test vector 3
        a = 3'b011; // 3
        b = 3'b010; // 2
        #20; // Wait for multiplication
        if (p !== 6'b000110) $display("Test 3 failed!");

        // Test vector 4
        a = 3'b100; // 4
        b = 3'b100; // 4
        #20; // Wait for multiplication
        if (p !== 6'b010000) $display("Test 4 failed!");

        // Test vector 5
        a = 3'b101; // 5
        b = 3'b010; // 2
        #20; // Wait for multiplication
        if (p !== 6'b001010) $display("Test 5 failed!");

        // Test vector 6
        a = 3'b110; // 6
        b = 3'b001; // 1
        #20; // Wait for multiplication
        if (p !== 6'b000110) $display("Test 6 failed!");

        // End simulation
        $finish;
    end

endmodule
