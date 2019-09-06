`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 12:37:38
// Design Name: 
// Module Name: 4bit
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


module CLC(

    input a,

    input b,

    output g,

    output p

    );

    

    assign g = a & b;

    assign p = a | b;

    

endmodule 



module FourBitCLAdder(

    input c_in,

    input   [3:0]   a,

    input   [3:0]   b,

    output  [3:0]   sum,

    output          c_out

    );

    

    wire [3:0] g;

    wire [3:0] p;

    wire  [3:0] c;

    

    CLC clc_0(a[0], b[0],g[0],p[0]);

    CLC clc_1(a[1], b[1],g[1],p[1]);

    CLC clc_2(a[2], b[2],g[2],p[2]);

    CLC clc_3(a[3], b[3],g[3],p[3]);

    

    assign c[0] = g[0] | (p[0] & c_in);

    assign c[1] = g[1] | (g[0] & p[1]) | (c_in & p[0] & p[1]) ;

    assign c[2] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (c_in & p[0] & p[1] & p[2]) ;

    assign c[3] = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]) | (c_in & p[0] & p[1] & p[2] & p[3]) ;





    assign sum[0] = c_in ^ a[0] ^ b[0];

    assign sum[1] = c[0] ^ a[1] ^ b[1];    

    assign sum[2] = c[1] ^ a[2] ^ b[2];

    assign sum[3] = c[2] ^ a[3] ^ b[3];

    assign c_out = c[3] ;  

    

endmodule
