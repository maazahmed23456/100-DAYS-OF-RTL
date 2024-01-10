`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 18:42:17
// Design Name: 
// Module Name: CSL_TB
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


module carry_select_tb();
reg [3:0]x,y;
reg carry;
wire[3:0]s;
wire cout ;
carry_select dut(.x(x),.y(y),.carry(carry),.s(s),.cout(cout));
initial
begin
#0 carry=1'b0;x=4'b0001;y=4'b0110;
#10 carry=1'b1;x=4'b1001;y=4'b0010;
#10 carry=1'b1;x=4'b0101;y=4'b0001;
#10 carry=1'b0;x=4'b0101;y=4'b0010;
#10 carry=1'b0;x=4'b1101;y=4'b0010;
#10 carry=1'b1;x=4'b0111;y=4'b0010;
#10 carry=1'b1;x=4'b0101;y=4'b0010;
#10 carry=1'b0;x=4'b0111;y=4'b0001;
#10 carry=1'b1;x=4'b0100;y=4'b0010;

end
initial
begin
$monitor("x=%b,y=%b,carry=%b,s=%b,cout=%b",x,y,carry,s,cout);
#200 $finish;
end 
endmodule