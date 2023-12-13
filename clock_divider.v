`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 18:55:06
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(clk,divideby2,divideby4,divideby8,divideby16,rst);
input clk,rst;
reg [3:0]count;
output reg divideby2,divideby4,divideby8,divideby16;
always@(posedge clk)
begin
if(rst==0)
count=4'b0000;
else
count=count+1;
  divideby2=count[0];
  divideby4=count[1];
  divideby8=count[2];
  divideby16=count[3];
end
endmodule