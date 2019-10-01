`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2019 15:38:18
// Design Name: 
// Module Name: mas_tb
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


module jmsflipfloptb;
	wire q, qbar;
	reg clk,rst;
	reg d;

	wire qn_1,qn_1bar; // to monitor current q and previous q values

	jmsflipflop jmsff(q,qbar,clk,rst,d);
//	jdflipflop  jdff(qn_1,qn_1bar,clk,1'b0,q);
  
	always #5 clk = ~clk;
  
  //enabling the wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end

	initial
	begin
		d = 0; // JUST keep it initialized
                clk = 1'b0;
		rst = 1; # 20;
		$display("INITIALIZING");
		$display("RSLT\td\tqn_1\tq");
                $display ("PASS\t%d\t%d\t%d",d,qn_1,q);

		rst = 0; # 20;
                $display ("PASS\t%d\t%d\t%d",d,qn_1,q);

		$display("\nTESTING");
		$display("RSLT\td\tqn_1\tq");
                d = 0; # 10; // Another value
                if ( q === 1'b0 ) // Test for inversion
                        $display ("PASS\t%d\t%d\t%d",d,qn_1,q);
                else
                        $display ("FAIL\t%d\t%d\t%d",d,qn_1,q);
		
                d = 1; # 10; // Another value
                if ( q === 1'b0 ) // Test for inversion
                        $display ("PASS\t%d\t%d\t%d",d,qn_1,q);
                else
                        $display ("FAIL\t%d\t%d\t%d",d,qn_1,q);
	
                # 5; // Another value
                if ( q === 1'b1 ) // Test for inversion
                        $display ("PASS\t%d\t%d\t%d",d,qn_1,q);
                else
                        $display ("FAIL\t%d\t%d\t%d",d,qn_1,q);
	
                d = 0; # 5; // Another value
                if ( q === 1'b1 ) // Test for inversion
                        $display ("PASS\t%d\t%d\t%d",d,qn_1,q);
                else
                        $display ("FAIL\t%d\t%d\t%d",d,qn_1,q);
	
                d = 1; # 5; // JUST wait
                if ( q === 1'b0 ) // Test for inversion
                        $display ("PASS\t%d\t%d\t%d",d,qn_1,q);
                else
                        $display ("FAIL\t%d\t%d\t%d",d,qn_1,q);
	
		$finish;	
	end
endmodule