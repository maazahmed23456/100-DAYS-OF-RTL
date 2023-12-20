`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 22:17:34
// Design Name: 
// Module Name: COMPARATOR_TB
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


module COMPARATOR_TB;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire Lesser;
	wire Greater;
	wire Equal;

	// Instantiate the Unit Under Test (UUT)
	COMPARATOR uut (
		.a(a), 
		.b(b), 
		.Lesser(Lesser), 
		.Greater(Greater), 
		.Equal(Equal)
	);
initial begin
	$monitor("    A=%d    B=%d   Lesser=%b     Greater=%b    Equal=%b   ",a,b,Lesser,Greater,Equal);
	end

	initial begin
	   a = 2;b = 2;
		#100 a=22;b=444;
		#100 a=444;b=555;
		#100 a=777;b=111;
		#100 a=8888;b=8888;
		#500 $finish;
        

	end
      
endmodule