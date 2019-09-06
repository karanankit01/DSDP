`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 09:57:51
// Design Name: 
// Module Name: full_adder
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


module fa(a, b, c, sum, carry);
input a;
input b;
input c;
output sum;
output carry;
wire d,e,f;
xor(sum,a,b,c);
and(d,a,b);
and(e,b,c);
and(f,a,c);
or(carry,d,e,f);
endmodule