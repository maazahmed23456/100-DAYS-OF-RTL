`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 21:41:48
// Design Name: 
// Module Name: BIN_TO_ONEHOT_ENCODER
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


// Binary to one-hot

module ONE_HOT(bin_i,one_hot_o);
parameter BIN_W=4;
parameter ONE_HOT_W=16;
input   [BIN_W-1:0]     bin_i;
output  [ONE_HOT_W-1:0] one_hot_o;

assign one_hot_o = 1'b1<<bin_i;

endmodule