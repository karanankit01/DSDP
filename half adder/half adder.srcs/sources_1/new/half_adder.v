`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 09:24:56
// Design Name: 
// Module Name: half_adder
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


module ha(a, b, sum, carry);
input a;
input b;
output sum;
output carry;
assign carry=a&b;                           //-This is same as and(carry,a,b)
assign sum=a^b;                             //-This is same as xor(sum,a,b)
endmodule