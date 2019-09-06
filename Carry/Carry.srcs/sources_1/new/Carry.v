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
module demo_cla(a,b,cin,s);
input [7:0] a;
input [7:0] b;
input cin;
output [7:0] s;
wire [7:0] p,g,c;
assign p[0]=a[0]^b[0];
assign p[1]=a[1]^b[1];
assign p[2]=a[2]^b[2];
assign p[3]=a[3]^b[3];
assign p[4]=a[4]^b[4];
assign p[5]=a[5]^b[5];
assign p[6]=a[6]^b[6];
assign p[7]=a[7]^b[7];

assign g[0]=a[0]&b[0];
assign g[1]=a[1]&b[1];
assign g[2]=a[2]&b[2];
assign g[3]=a[3]&b[3];
assign g[4]=a[4]&b[4];
assign g[5]=a[5]&b[5];
assign g[6]=a[6]&b[6];
assign g[7]=a[7]&b[7];

assign c[0]=g[0]|(p[0]&cin);
assign c[1]=g[1]|(p[1]&c[0]);
assign c[2]=g[2]|(p[2]&c[1]);
assign c[3]=g[3]|(p[3]&c[2]);
assign c[4]=g[4]|(p[4]&c[3]);
assign c[5]=g[5]|(p[5]&c[4]);
assign c[6]=g[6]|(p[6]&c[5]);
assign c[7]=g[7]|(p[7]&c[6]);

assign s[0]=p[0]^cin;
assign s[1]=p[1]^c[0];
assign s[2]=p[2]^c[1];
assign s[3]=p[3]^c[2];
assign s[4]=p[4]^c[3];
assign s[5]=p[5]^c[4];
assign s[6]=p[6]^c[5];
assign s[7]=p[7]^c[6];

endmodule