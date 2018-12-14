module Counter(clk, out);

input wire clk;
output reg [3:0] out;

parameter END = 4'b1111;
parameter BEGIN = 4'b0000;

always @(posedge clk) begin
	if(out >= END)
		out = BEGIN;
	else
		out = (out + 1);
end

endmodule