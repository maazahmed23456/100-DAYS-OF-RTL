`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 18:33:17
// Design Name: 
// Module Name: FA
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


module fadd(s,cout,d,e,cin);  
input d,e,cin;
output s,cout;
assign s = (d ^ e ^ cin);  
assign cout = ((d&e) | (e&cin) | (d&cin));
endmodule