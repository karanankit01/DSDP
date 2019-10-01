// Verilog code for up counter
module up_counter(input clk, r, output[4:0] cnt);

reg [4:0] counter_up;

// up counter
always @(posedge clk or posedge r)
begin
if(r)
 counter_up <= 5'd0;
else
 counter_up <= counter_up + 5'd1;
end 

assign cnt = counter_up;

endmodule
