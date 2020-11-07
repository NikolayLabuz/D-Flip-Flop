`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:13 10/28/2020
// Design Name:   DFF
// Module Name:   D:/XilinxProgramm/XilinxInfo/Project/Lab3/DFFTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DFFTest;

	// Inputs
	reg clk;
	reg din;
	reg RST_N;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.clk(clk), 
		.din(din), 
		.RST_N(RST_N), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		din = 0;
		RST_N = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin #20 din=1; #30 din=0; end

	always begin #5 clk = ~clk; end

	always begin #50 RST_N=0; #50 RST_N=1; end
endmodule

