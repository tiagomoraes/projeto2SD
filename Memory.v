module Memory(count, val, out);

input wire[3:0] count;
output reg [3:0] out;
output reg [3:0] val;

parameter X = 4;
parameter Y = 4;

always begin
	case(count)
		4'b0000: // load X, clear Y, clear Z, sum ULA
			begin
				out <= 4'b0000;
				val <= X;
			end
		4'b0001: // load X, load Y, hold Z, sum Ula
			begin
				out <= 4'b0001;
				val <= Y;
			end
		4'b0010: // hold X, load Y, hold Z, dont care ULA
			begin
				out <= 4'b0010;
				val <= 0;
			end
		4'b0011: // hold X, shift right Y, hold Z, dont care ULA
			begin
				out <= 4'b0011;
				val <= 0;
			end
		4'b0100: // clear X, clear Y, load Z, dont care ULA
			begin
				out <= 4'b0100;
				val <= 0;
			end
	endcase
end

endmodule