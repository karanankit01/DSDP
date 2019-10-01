`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2019 15:36:52
// Design Name: 
// Module Name: mas_sla
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


module jmsslaveflipflop(q,qbar,clk,rst,d);
        output reg q;
        output qbar;
        input clk, rst;
        input d;

        assign qbar = ~q;

        always @(posedge clk)
        begin
                if (rst)
                        q <= 0;
                else
                        q <= d;
        end
endmodule

module jmsflipflop(q,qbar,clk,rst,d);
	output q;
	output qbar;
	input clk, rst;
	input d;

	wire iclk, q1, q1bar; // inverted clock and intermediate q output of Master

	assign iclk = ~clk;
	assign qbar = ~q;

	jmsslaveflipflop jmasterff01(q1,q1bar,clk,rst,d);
	jmsslaveflipflop jslaveff02(q,qbar,iclk,rst,q1);

endmodule