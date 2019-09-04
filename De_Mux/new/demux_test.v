`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 17:05:05
// Design Name: 
// Module Name: demux_test
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
reg in;
reg s0;
reg s1;
reg s2;

// Outputs
wire d0;
wire d1;
wire d2;
wire d3;
wire d4;
wire d5;
wire d6;
wire d7;

// Instantiate the Unit Under Test (UUT)
Demultiplexer uut (
.in(in), 
.s0(s0), 
.s1(s1), 
.s2(s2), 
.d0(d0), 
.d1(d1), 
.d2(d2), 
.d3(d3), 
.d4(d4), 
.d5(d5), 
.d6(d6), 
.d7(d7)
);
initial begin
// Initialize Inputs
in = 0;
s0 = 0;
s1 = 0;
s2 = 0;
// Wait 50 ns for global reset to finish
#50;
in = 1;
s0 = 0;
s1 = 1;
s2 = 0;
// Wait 50 ns for global reset to finish
#50;
in = 0;
s0 = 1;
s1 = 0;
s2 = 1;
// Wait 50 ns for global reset to finish
#50;
in = 0;
s0 = 0;
s1 = 1;
s2 = 0;
// Wait 50 ns for global reset to finish
#50;
in = 1;
s0 = 0;
s1 = 0;
s2 = 0;
// Wait 50 ns for global reset to finish
#50;
in = 0;
s0 = 0;
s1 = 1;
s2 = 1;
// Wait 50 ns for global reset to finish
#50;
// Add stimulus here
end
endmodule