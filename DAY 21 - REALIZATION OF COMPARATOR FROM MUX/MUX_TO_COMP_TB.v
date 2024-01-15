`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 19:37:53
// Design Name: 
// Module Name: MUX_TO_COMP_TB
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


module comparator_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire greater;
	wire lesser;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.a(a), 
		.b(b), 
		.greater(greater), 
		.lesser(lesser), 
		.equal(equal)
	);

	initial begin
		// Initialize Inputs
		a=0; b=0;
		#10 a=0;b=1;
		#10 a=1;b=0;
		#10 a=1;b=1;

	end
	
	initial 
	begin
	$monitor("A=%b | B=%b | Greater =%b | Lesser=%b | Equal=%b",a,b,greater,lesser,equal);
	#100 $finish;
	end
      
endmodule