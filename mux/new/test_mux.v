`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2019 09:31:19
// Design Name: 
// Module Name: test_mux
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


module TestModule;
// Inputs
reg d0;
reg d1;
reg d2;
reg d3;
reg d4;
reg d5;
reg d6;
reg d7;
reg [2:0] sel;

// Outputs
wire out;

// Instantiate the Unit Under Test (UUT)
Mulitplexer uut (
.d0(d0), 
.d1(d1), 
.d2(d2), 
.d3(d3), 
.d4(d4), 
.d5(d5), 
.d6(d6), 
.d7(d7), 
.sel(sel), 
.out(out)
);

initial begin
// Initialize Inputs
d0 = 0;
d1 = 0;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 0;
d6 = 0;
d7 = 0;
sel = 0;

// Wait 100 ns for global reset to finish
#100;

d0 = 0;
d1 = 0;
d2 = 0;
d3 = 0;
d4 = 1;
d5 = 1;
d6 = 0;
d7 = 1;
sel = 5;

// Wait 100 ns for global reset to finish
#100;

d0 = 1;
d1 = 0;
d2 = 0;
d3 = 1;
d4 = 1;
d5 = 1;
d6 = 0;
d7 = 0;
sel = 3;

// Wait 100 ns for global reset to finish
#100;

d0 = 0;
d1 = 1;
d2 = 0;
d3 = 1;
d4 = 1;
d5 = 0;
d6 = 0;
d7 = 0;
sel = 6;

// Wait 100 ns for global reset to finish
#100;

d0 = 1;
d1 = 1;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 1;
d6 = 1;
d7 = 1;
sel = 2;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
end
endmodule