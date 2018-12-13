module CPU(clk, outX, outY, outZ, outULA, tX, tY, tZ, tULA, outCounter, valMemory, funcOutMemory);

input wire clk;
output wire [3:0] outX;
output wire [3:0] outY;
output wire [3:0] outZ;
output wire [3:0] outULA;
output wire [1:0] tX;
output wire [2:0] tY;
output wire [1:0] tZ;
output wire tULA;
output wire [2:0] outCounter;
output wire [3:0] valMemory;
output wire [2:0] funcOutMemory;

Counter(clk, outCounter);
Memory(outCounter, valMemory, funcOutMemory);
Controller controller(funcOutMemory, tX, tY, tZ, tULA);

RegisterX regX(clk, tX, valMemory, outX);
RegisterY regY(clk, tY, outULA, outY);
RegisterX regZ(clk, tZ, outY, outZ);
ULA ula(tULA, outX, outY, outULA);

endmodule

