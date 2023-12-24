`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 21:20:40
// Design Name: 
// Module Name: PIPO_TB
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


module PIPO_TB;

reg clk,clear;

wire [3:0] q;
reg [3:0] d;

PIPO uut (.clk(clk), .clear(clear),.d(d),.q(q));

initial begin

clk = 0;

clear = 1;


#5 clear=1'b0;


#5 d=4'b0011;
#5 d=4'b0111;
#5 d=4'b1011;
#5 d=4'b1001;
#5 d=4'b1111;
#5 d=4'b0001;

end

always #1 clk = ~clk;


initial 
begin
$monitor(" Data In = %b | Data out=%b",d,q);
#150 $stop;
end

endmodule