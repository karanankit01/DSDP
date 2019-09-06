`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 11:16:27
// Design Name: 
// Module Name: carry_test
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


module test_cla();
reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] s;
demo_cla dut(a,b,cin,s);
initial
begin
 a=8'b00000001;b=8'b00000001;cin=1'b0;
#10 a=8'b00000001;b=8'b00000001;cin=1'b1;
#10 a=8'b00000010;b=8'b00000011;cin=1'b0;
#10 a=8'b10000001;b=8'b10000001;cin=1'b0;
#10 a=8'b00011001;b=8'b00110001;cin=1'b0;
#10 a=8'b00000011;b=8'b00000011;cin=1'b1;
#10 a=8'b11111111;b=8'b00000001;cin=1'b0;
#10 a=8'b11111111;b=8'b00000000;cin=1'b1;
#10 a=8'b11111111;b=8'b11111111;cin=1'b0;
#10 $stop;
end

endmodule