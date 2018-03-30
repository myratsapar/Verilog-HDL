module bankers(SW, LEDR);
input [2:0] SW;
input [0:0] LEDR;

wire m, v, y;

assign m = SW[0];
assign v = SW[1];
assign y = SW[2];

assign LEDR[0] = (m & ~v & y) | (m & v & y) | (m & v & ~y);
endmodule 