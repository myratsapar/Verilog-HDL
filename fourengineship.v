module fourengineship(SW, LEDR, LEDG);
input [3:0] SW;
output [0:0] LEDR;
output [0:0] LEDG;

wire a, b, c, d;

assign a = SW[0];
assign b = SW[1];
assign c = SW[2];
assign d = SW[3];

assign LEDR[0] = (c & d) | (a & d) | (a & c) | (b & d) | (b & c) | (a & b);
assign LEDG[0] = ~LEDR[0];
endmodule