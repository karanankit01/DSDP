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


module top_tb;



reg           c_in;

reg   [7:0]   a;

reg   [7:0]   b;

wire  [7:0]   sum;

wire          c_out;



carry uut(c_in, a, b, sum, c_out);



reg [8:0] temp = 0;



initial begin

    #100 c_in = 0; a = 0; b = 0;

    for(a = 0; a < 8'hff ; a = a+1) begin

        for(b = 0; b < 8'hff ; b = b+1) begin

            #100 c_in = 0;

            #100 temp = a + b + c_in;

            #100 assert( sum == temp[7:0] && c_out == temp[8] );

            begin

                $display("a = %h b = %h cin = %b sum = %2h temp = %3h cout = %b",a,b,c_in,sum,temp,c_out);

                $fatal(1, "failed");

            end

            #100 c_in = 1;

            #100 temp = a + b + c_in;

            #100 assert( sum == temp[7:0] && c_out == temp[8] );

            begin

                $display("a = %h b = %h cin = %b sum = %2h temp = %3h cout = %b",a,b,c_in,sum,temp,c_out);

                $fatal(1, "failed");

            end

        end

    end

    #100 c_in = 0; a = 8'hff; b = 8'hff;

    #100 temp = a + b + c_in; 

    #100 assert( sum == temp[7:0] && c_out == temp[8] );

    begin

        $display("a = %h b = %h cin = %b sum = %2h temp = %3h cout = %b",a,b,c_in,sum,temp,c_out);

        $fatal(1, "failed");

    end

    #100 c_in = 1; a = 8'hff; b = 8'hff;

    #100 temp = a + b + c_in; 

    #100 assert( sum == temp[7:0] && c_out == temp[8] );

    begin

        $display("a = %h b = %h cin = %b sum = %2h temp = %3h cout = %b",a,b,c_in,sum,temp,c_out);

        $fatal(1, "failed");

    end

    $display("@@@Passed");

    $finish;

end

endmodule