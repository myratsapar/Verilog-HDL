module twobitmultiply(SW, LEDR);
input [3:0] SW;
output [3:0] LEDR;

wire a1, a2, b1, b2;
wire c1, c2, s1, s2, s3;

assign a1 = SW[0];
assign a2 = SW[1];
assign b1 = SW[2];
assign b2 = SW[3];

halfadder ha1((a1 & b2), (a2 & b1), c1, s1);
halfadder ha2((a2 & b2), c1, c2, s2);

assign LEDR[0] = a1 & b1;
assign LEDR[1] = s1;
assign LEDR[2] = s2;
assign LEDR[3] = c2;
endmodule

module halfadder(a, b, c, s);
input a, b;
output c, s;

assign s = a ^ b;
assign c = a & b;
endmodule//6:14 PM 30-Mar-18
