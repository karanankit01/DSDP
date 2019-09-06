`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 12:39:05
// Design Name: 
// Module Name: 4bit_test
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


module FourBitCLAdder_tb;



reg           c_in;

reg   [3:0]   a;

reg   [3:0]   b;

wire  [3:0]   sum;

wire          c_out;



FourBitCLAdder uut(c_in, a, b, sum, c_out);



reg [4:0] temp = 0;



initial begin

    #100 c_in = 0; a = 0; b = 0;

    for(a = 0; a < 4'hf ; a = a+1) begin

        for(b = 0; b < 4'hf ; b = b+1) begin

            #100 c_in = 0;

            #100 temp = a + b + c_in;

            #100 assert( sum == temp[3:0] && c_out == temp[4] ); 

            begin

                $display("a = %h b = %h cin = %b sum = %4b temp = %5b cout = %b",a,b,c_in,sum,temp,c_out);

                $fatal(1, "failed");

            end

            #100 c_in = 1;

            #100 temp = a + b + c_in;

            #100 assert( sum == temp[3:0] && c_out == temp[4] ); 

            begin

                $display("a = %h b = %h cin = %b sum = %4b temp = %5b cout = %b",a,b,c_in,sum,temp,c_out);

                $fatal(1, "failed");

            end

        end

    end

    #100 c_in = 0; a = 4'hf; b = 4'hf;

    #100 temp = a + b + c_in; 

    #100 assert( sum == temp[3:0] && c_out == temp[4] );

    begin

        $display("a = %h b = %h cin = %b sum = %4b temp = %5b cout = %b",a,b,c_in,sum,temp,c_out);

        $fatal(1, "failed");

    end

    #100 c_in = 1; a = 4'hf; b = 4'hf;

    #100 temp = a + b + c_in; 

    #100 assert( sum == temp[3:0] && c_out == temp[4] );

    begin

        $display("a = %h b = %h cin = %b sum = %4b temp = %5b cout = %b",a,b,c_in,sum,temp,c_out);

        $fatal(1, "failed");

    end

    $display("@@@Passed");

    $finish;

end

endmodule