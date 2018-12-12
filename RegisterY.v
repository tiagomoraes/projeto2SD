module RegisterY(clk, func, in, out);

input wire clk;
input wire [2:0] func;
input wire [3:0] in;
output reg [3:0] out;

parameter CLEAR = 3'b000;
parameter LOAD = 3'b001;
parameter HOLD = 3'b010;
parameter SL = 3'b011;
parameter SR = 3'b100;

always @(posedge clk) begin
	case(func)
		CLEAR:
			out <= 4'b0000;
		LOAD:
			out <= in;
		HOLD:
			out <= out;
		SL:
			out <= (out << 1);
		SR:
			out <= (out >> 1);
	endcase
end

endmodule
