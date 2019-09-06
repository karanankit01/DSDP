`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 11:15:35
// Design Name: 
// Module Name: Carry
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

module top(

    input c_in,

    input [7:0] a,

    input [7:0] b,

    output [7:0] sum,

    output c_out

    );

    wire cout1;

    FourBitCLAdder CLA1(c_in, a[3:0], b[3:0], sum[3:0], cout1);

    FourBitCLAdder CLA2(cout1, a[7:4], b[7:4], sum[7:4], c_out);

endmodule