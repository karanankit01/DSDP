`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 09:59:03
// Design Name: 
// Module Name: fa_test
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

module fulladdt_b;
reg a;
reg b;
reg c;
wire sum;
wire carry;
fa uut (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin 
a=1'b0;b=1'b0;c=1'b0;
#10 a=1'b0;b=1'b0;c=1'b1;
#10 a=1'b0;b=1'b1;c=1'b0;
#10 a=1'b0;b=1'b1;c=1'b1;
#10 a=1'b1;b=1'b0;c=1'b0;
#10 a=1'b1;b=1'b0;c=1'b1;
#10 a=1'b1;b=1'b1;c=1'b0;
#10 a=1'b1;b=1'b1;c=1'b1;
#10$stop;
end
endmodule