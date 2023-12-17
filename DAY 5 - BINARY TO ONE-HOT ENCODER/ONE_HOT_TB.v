`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 21:43:14
// Design Name: 
// Module Name: ONE_HOT_TB
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


module one_hot_tb();

  localparam BIN_W = 4;
  localparam ONE_HOT_W = 16;
  integer i;
  

  reg [BIN_W-1:0] bin_i;
  wire [ONE_HOT_W-1:0] one_hot_o;

  ONE_HOT U(bin_i,one_hot_o);

  initial 
  begin
    for( i=0; i<16; i=i+1)
	begin
      bin_i = i;
      #5;
    end
	
  
  end
  
  initial
  begin
  $monitor("Binary Value: %b | One hot encoded value : %b", bin_i,one_hot_o);
  #300 $finish;
  end

endmodule
