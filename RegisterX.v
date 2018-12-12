module RegisterX(func, clk, in, out);

input wire clk;
input wire [1:0] func;
input wire [3:0] in;
output reg [3:0] out;

parameter CLEAR = 2'b00;
parameter LOAD = 2'b01;
parameter HOLD = 2'b10;

always @(posedge clk) begin
	case(func)
		CLEAR:
			out <= 4'b0000;
		LOAD:
			out <= in;
		HOLD:
			out <= out;
	endcase
end

endmodule