`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 18:35:53
// Design Name: 
// Module Name: PISO
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

module pipo(
    input [5:0] RIN,
    input clk, rst,
    output reg [5:0] ROUT
);

always @(posedge clk) begin
    if (!rst) begin
        ROUT <= 6'b000000;
    end
    else begin
        ROUT <= RIN;
    end
end

endmodule


