module ULA(func, X,Y, out);
input wire [3:0] X,Y;
input wire func;
output reg [3:0] out;

parameter ADD = 1'b0;
parameter SUB = 1'b1;

always begin 
	case(func)
		ADD: 
			out <= (X + Y);
		SUB:
			out <= (X - Y);
	endcase
end

endmodule