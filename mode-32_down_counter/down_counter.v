// Verilog code for down counter
module down_counter(input clk, r, output [4:0] cnt);

reg [4:0] counter_down;

// down counter
always @(posedge clk or posedge r)
begin
if(r)
 counter_down <= 5'hf;
else
 counter_down <= counter_down - 5'd1;
end 

assign cnt = counter_down;
endmodule