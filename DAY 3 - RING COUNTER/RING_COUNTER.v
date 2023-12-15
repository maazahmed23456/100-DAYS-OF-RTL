`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:10:42
// Design Name: 
// Module Name: RING_COUNTER
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


module RING_COUNTER ( clk,
     reset, count );
	 parameter WIDTH=4;
	 input clk,reset;
	 output reg [WIDTH-1:0] count;
	 always@(posedge clk)
begin
if(reset)
count={count[0],count[WIDTH-1:1]};
else 
count=4'b0001;
end
endmodule