`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 17:22:10
// Design Name: 
// Module Name: DFLIPFLOP
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


module D_FlipFlop (
    input d,      // Data input
    input clk,    // Clock input
    input reset,  // Reset input
    output reg q  // Output
);

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            q <= 1'b0;  // Reset state
        else
            q <= d;     // D input is transferred to Q on clock edge
    end

endmodule
