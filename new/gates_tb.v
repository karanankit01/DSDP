`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 15:04:07
// Design Name: 
// Module Name: gates_tb
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


module gates_tb;

wire [6:0]y;
reg a, b;

gates dut(.y(y), .a(a), .b(b));

initial

begin

a = 1'b0;
b = 1'b0;
#50;

a = 1'b0;
b = 1'b1;
#50;

a = 1'b1;
b = 1'b0;
#50;

a = 1'b1;
b = 1'b1;

end

endmodule
