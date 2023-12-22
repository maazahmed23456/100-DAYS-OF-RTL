`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2023 20:10:46
// Design Name: 
// Module Name: SISO_TB
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


module SISO_TB();
reg d,clk;
wire q;
SISO a(d, clk, q);
initial
begin
$monitor($time,"d=%b,clk=%b,q=%b",d,clk,q);
end
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
d=1;
#10 d=0;
#10 d=1;
#10 d=1;
#40 $finish;
end 
endmodule