module Counter(clk, out);

input wire clk;
output reg [3:0] out;

parameter END = 3'b101
parameter BEGIN = 3'b000

always @(posedge clk) begin
	if(out >= END)
		out = BEGIN;
	else
		out = (out + 1);
end

endmodule