module fourbitsum(Sw, LEDR);
input [7:0]  SW;
output [4:0] LEDR;

wire a1, a2, a3, a4;
wire b1, b2, b3, b4;
wire c1, c2, c3, c4;
wire s1, s2, s3, s4;

assign a1 = SW[0];
assign a2 = SW[1];
assign a3 = SW[2];
assign a4 = SW[3];

assign b1 = SW[4];
assign b2 = SW[5];
assign b3 = SW[6];
assign b4 = SW[7];

halfadder ha(a1, b1, c1, s1);
fulladder fa1(a2, b2, c1, c2, s2);
fulladder fa2(a3, b3, c2, c3, s3);
fulladder fa3(a4, b4, c3, c4, s4);

assign LEDR[0] = s1;
assign LEDR[1] = s2;
assign LEDR[2] = s3;
assign LEDR[3] = s4;
assign LEDR[4] = c4;
endmodule

module halfadder(a, b, c, s);
input a, b;
output c, s;

assign s = a ^ b;
assign c = a & b;
endmodule

module fulladder(a, b, ci, co, s);
input a, b, ci;
output co, s;

assign s = a ^ b ^ c;
assign co = (a & b) | ci & (a ^ b);
endmodule //5:21 PM 30-Mar-18




















 