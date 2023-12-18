`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2023 21:37:14
// Design Name: 
// Module Name: 4BIT_SYNC_COUNTER
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


module BCD_COUNTER(input clock, clear,
           output reg [3:0] count);
reg [3:0] t;
always @ (posedge clock) begin
  if (clear) 
  begin
    t <= 4'b0000;
    count <= 4'b0000;
  end
  else 
  begin
    t <= t + 1;
    if (t == 4'b1001) 
    begin
      t <= 4'b0000;
    end
    count <= t;
  end
end
endmodule
