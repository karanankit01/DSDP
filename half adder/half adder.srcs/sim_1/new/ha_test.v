`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 09:27:22
// Design Name: 
// Module Name: ha_test
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


module halfaddert_b;
reg a;
reg b;
wire sum;
wire carry;
ha uut ( .a(a),.b(b),.sum(sum), .carry(carry));
initial begin
a=1'b0;b=1'b0;                       //-This is input a=0,b=0
#10 a=1'b0;b=1'b1;                        //-This is input a=0,b=1
#10 a=1'b1;b=1'b0;                        //-This is input a=1,b=0
#10 a=1'b1;b=1'b1;                         //-This is input a=1,b=1
#10$stop;
end
endmodule