`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 14:59:28
// Design Name: 
// Module Name: gates
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


module gates(input a, b, output [6:0]y);
assign y[6]= a & b; // AND gate
assign y[5]= a | b; // OR gate
assign y[4]= ~a; // NOT gate
assign y[3]= ~(a & b); // NAND gate
assign y[2]= ~(a | b); // NOR gate
assign y[1]= a ^ b; // XOR gate
assign y[0]= ~(a ^ b); // XNOR gate
endmodule