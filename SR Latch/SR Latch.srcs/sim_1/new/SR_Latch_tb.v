`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 08:55:28
// Design Name: 
// Module Name: SR_Latch_tb
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


`timescale 1ns / 1ps



module sr_latch_tb( );

    

    reg s, r; // inputs

    wire q = 1'b1;
    wire qn = 1'b0; // outputs

    

    sr_latch srl(q, qn, s, r);

    

    initial begin

    #10 // Wait for the global reset

    s=1'b0; r=1'b0; // s = 0

    #10

    s=1'b0; r=1'b1;

    #10

    s=1'b0; r=1'bx;

    #10

    s=1'b0; r=1'bz; 

    #10

    s=1'b1; r=1'b0; // s = 1

    #10

    s=1'b1; r=1'b1;

    #10

    s=1'b1; r=1'bx;

    #10

    s=1'b1; r=1'bz;

    #10

    s=1'bx; r=1'b0; // s = x

    #10

    s=1'bx; r=1'b1;

    #10

    s=1'bx; r=1'bx;

    #10

    s=1'bx; r=1'bz;

    #10

    s=1'bz; r=1'b0; // s = z

    #10

    s=1'bz; r=1'b1;

    #10

    s=1'bz; r=1'bx;

    #10

    s=1'bz; r=1'bz; // 16 entries

    end

    

    initial begin

    #5 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);// to offset display from entry

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

    #10 $display("s = %b, r = %b",s,r); $display("q = %b, qn = %b", q, qn);

   

    //$display("End SR Latch Simulation");

    end

    

endmodule
