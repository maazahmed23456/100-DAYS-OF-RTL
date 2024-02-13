`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 17:24:53
// Design Name: 
// Module Name: MUX
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


module MUX2x1 (
    input sel, // Selection input
    input d0,        // Data input 0
    input d1,        // Data input 1
    output reg out   // Output
);

    always @(*)
    begin
        case (sel)
            1'b0: out = d0;  // If sel is 00, output is d0
            1'b1: out = d1;  // If sel is 01, output is d1
            default: out = 1'b0; // Default case
        endcase
    end

endmodule
