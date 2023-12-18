`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2023 21:40:52
// Design Name: 
// Module Name: BCD_COUNTER_TB
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


module BCD_COUNTER_TB;

	// Inputs
	reg [0:0] clock;
	reg clear;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	BCD_COUNTER uut (
		.clock(clock), 
		.count(count), 
		.clear(clear)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		clear = 1;
#25 clear=0;
#250 clear=1;
#25 clear=0;
#450 $finish;

		end
	always 
	#10 clock=~clock;
      
endmodule