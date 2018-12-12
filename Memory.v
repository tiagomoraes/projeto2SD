module Memory(count, val, out);

input wire[2:0] count;
output reg [out] out;

parameter X = 3;
parameter Y = 5;

always begin
	case(count)
		3'b000: // load X, clear Y, clear Z, sum ULA
			out <= 3'b000;
			val <= X;
		3'b001: // load X, load Y, hold Z, sum Ula
			out <= 3'b001;
			val <= Y;
		3'b010: // hold X, load Y, hold Z, fuck ULA
			out <= 3'b010;
			val <= 0
		3'b011: // hold X, shift right Y, hold Z, fuck ULA
			out <= 3'011;
			val <= 0;
		3'b100: // clear X, clear Y, load Z, fuck ULA
			out <= 3'b100;
			val <= 0;
	endcase
end

endmodule