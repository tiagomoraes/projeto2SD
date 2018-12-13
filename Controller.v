module Controller(func, tX, tY, tZ, tULA);

input wire [2:0] func;
output reg [1:0] tX;
output reg [2:0] tY;
output reg [1:0] tZ;
output reg tULA;

parameter CLEARXZ = 2'b00;
parameter LOADXZ = 2'b01;
parameter HOLDXZ = 2'b10;

parameter CLEARY = 3'b000;
parameter LOADY = 3'b001;
parameter HOLDY = 3'b010;
parameter SLY = 3'b011;
parameter SRY = 3'b100;

parameter ADDULA = 1'b0;
parameter SUBULA = 1'b1;

always begin
	case(func)
		3'b000:
			begin
				tX <= LOADXZ;
				tY <= CLEARY;
				tZ <= CLEARXZ;
				tULA <= ADDULA;
			end
		3'b001:
			begin
				tX <= LOADXZ;
				tY <= LOADY;
				tZ <= HOLDXZ;
				tULA <= ADDULA;
			end
		3'b010:
			begin
				tX <= HOLDXZ;
				tY <= LOADY;
				tZ <= HOLDXZ;
				tULA <= ADDULA;
			end
		3'b011:
			begin
				tX <= HOLDXZ;
				tY <= SRY;
				tZ <= HOLDXZ;
				tULA <= ADDULA;
			end
		3'b100:
			begin
				tX <= CLEARXZ;
				tY <= CLEARY;
				tZ <= LOADXZ;
				tULA <= ADDULA;
			end
	endcase
end

endmodule
