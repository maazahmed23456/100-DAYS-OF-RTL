`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 18:12:10
// Design Name: 
// Module Name: SCANCELL_TB
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


module testbench;

    // Parameters
    parameter CLK_PERIOD = 10;  // Clock period in time units

    // Inputs
    reg d, si, se, clk, reset;

    // Output
    wire so;

    // Instantiate the scan cell module
    SCANCELL scan_cell(
        .d(d),
        .si(si),
        .se(se),
        .clk(clk),
        .reset(reset),
        .so(so)
    );

    // Clock generation
always
begin
clk = 0;
forever #10 clk = ~clk;
end
    // Reset initialization
    initial begin
        reset = 1;
        #50;
        reset = 0;
    end

    // Stimulus
    initial begin
        // Apply test vectors
        d = 0; si = 0; se = 0;
        #100;
        d = 1; si = 0; se = 1;
        #100;
        d = 0; si = 1; se = 1;
        #100;
        d = 1; si = 1; se = 0;
        #100;
        d = 1; si = 1; se = 1;
        #100;
        d = 0; si = 0; se = 0;
        #100;
        // End simulation
        $finish;
    end

endmodule
