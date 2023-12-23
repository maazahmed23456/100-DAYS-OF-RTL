`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:14:47
// Design Name: 
// Module Name: SIPO_TB
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

module SIPO_TB();

reg clk,b;
wire [3:0]q;

SIPO uut(.clk(clk),.b(b),.q(q));

initial
begin
clk=1'b0;
forever #5clk=~clk;
end

initial
begin
$monitor("clk=%d,b=%d,q=%d",clk,b,q);
end

initial
begin
b=1;
#10;
b=0;
#10;
b=1;
#10;
b=0;

#50;
$finish;

end

endmodule