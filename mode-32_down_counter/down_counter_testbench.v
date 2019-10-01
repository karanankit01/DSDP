// Testbench Verilog code for down counter
module downcounter_testbench();

reg clk, r;
wire [4:0] cnt;

down_counter dut(clk, r, cnt);

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
r=1;
#20;
r=0;
end

endmodule