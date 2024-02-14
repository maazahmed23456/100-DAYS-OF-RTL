`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 18:46:57
// Design Name: 
// Module Name: MAC_TB
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


module MAC_UNIT_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units

    // Signals
    reg clk, rst;
    reg [2:0] a, b;
    wire [5:0] z;

    // Instantiate the MAC_UNIT module
    MAC_UNIT dut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .z(z)
    );

    // Clock generation
    always #((CLK_PERIOD / 2)) clk = ~clk;

    // Reset generation
    initial begin
        clk = 0;
        rst = 1;
        #20; // Wait for some time
        rst = 0;
    end

    // Test vectors
    initial begin
        // Test vector 1
        #30;
        a = 3'b001; // 1
        b = 3'b001; // 1
        
        // Test vector 2
        #30;
        a = 3'b010; // 2
        b = 3'b001; // 1
        
        // Test vector 3
        #30;
        a = 3'b011; // 3
        b = 3'b010; // 2
        
        // Test vector 4
        #30;
        a = 3'b100; // 4
        b = 3'b100; // 4
        
        // Test vector 5
        #30;
        a = 3'b101; // 5
        b = 3'b010; // 2
        
        // Test vector 6
        #30;
        a = 3'b110; // 6
        b = 3'b001; // 1
        
        // End simulation
        $finish;
    end

endmodule

