`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 18:43:35
// Design Name: 
// Module Name: MAC
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


module MAC_UNIT (
    input clk, rst,
    input [2:0] a, b,
    output [5:0] z
);

wire [5:0] w;
multiplier U1 (
    .a(a),
    .b(b),
    .p(w)
);

pipo U2 (
    .RIN(w),
    .clk(clk),
    .rst(rst),
    .ROUT(z)
);

endmodule
