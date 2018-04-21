module mux(SW, LEDR);
input [10:0] SW;
output [0:0] LEDR;
two_to_one A(SW[0], SW[1], SW[2], LEDR);
four_to_one B(SW[0], SW[1], SW[2], SW[3], SW[4], SW[5], LEDR);
eight_to_one C(Sw[0], SW[1], SW[2], SW[3], SW[4], SW[5], SW[6], SW[7], SW[8], SW[9], SW[10], LEDR);
endmodule

module two_to_one(x0, x1, s, c);
input x0, x1, s;
output c;
assign c = (x0 & ~s) | (x1 & s);
endmodule

module four_to_one(x0, x1, x2, x3, s0, s1, c);
input x0, x1, x2, x3, s0, s1;
output c;
wire c1, c2, c3;
two_to_one A(x0, x1, s1, c1);
two_to_one B(x2, x3, s1, c2);
two_to_one C(c1, c2, s0, c3);

assign c = c3;
endmodule

module eight_to_one(x0, x1, x2, x3, x4, x5, x6, x7, s0, s1, s2, c);
input x0, x1, x2, x3, x4, x5, x6, x7, s0, s1, s2;
output c;
wire c1, c2, c3;

four_to_one A(x0, x1, x2, x3, s1, s2, c1);
four_to_one B(x4, x5, x6, x7, s1, s2, c2);
two_to_one C(c1, c2, s0, c3);

assign c = c3;
endmodule







































