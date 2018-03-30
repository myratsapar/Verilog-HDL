module gates(SW, LEDR);
input [1:0] SW;
output [3:0] LEDR;

assign LEDR[0] = SW[1] & SW[0];
assign LEDR[1] = SW[1] | SW[0];
assign LEDR[2] = SW[1] ^ SW[0];
assign LEDR[3] = ~SW[1];

endmodule //3:25 PM 30-MAR-18