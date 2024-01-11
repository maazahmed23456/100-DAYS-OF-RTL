`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 23:28:51
// Design Name: 
// Module Name: MOORE_FSM_TB
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


module moore_fsm_tb;
reg din,clk,reset;
wire y;
moore_fsm m1(din, reset, clk, y);
initial
begin
reset=0;clk=0;din=0;
$monitor($time, , ,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",din);
#10 din=1;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;

end
always
#5 clk=~clk;
initial
#100 $finish ;
endmodule