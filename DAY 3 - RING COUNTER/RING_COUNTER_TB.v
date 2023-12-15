`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:12:26
// Design Name: 
// Module Name: RING_COUNTER_TB
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


module ring_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	parameter WIDTH=4;

	// Outputs
	wire [WIDTH-1:0] count;

	// Instantiate the Unit Under Test (UUT)
	RING_COUNTER uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		$monitor ("T=%0t out=%b", $time, count);
 #50 reset=1;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	initial
	#300 $finish;
      
endmodule