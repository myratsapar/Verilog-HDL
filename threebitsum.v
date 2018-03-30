module three_bit_sum(SW, LEDG);
input [5:0] SW;
output [3:0] LEDG;

wire a1, a2, a3;
wire b1, b2, b3;
wire c1, c2, c3, S1, S2, S3;

assign a1 = SW[0];
assign a2 = SW[1];
assign a3 = SW[2];

assign b1 = SW[4];
assign b2 = SW[5];
assign b3 = SW[6];

halfadder ha(a1,b1,c1,S1);
fulladder fa1(a2, b2, c1, c2, S2);
fulladder fa2(a3, b3, c2, c3, S3);

assign LEDG[0] = S1;
assign LEDG[1] = S2;
assign LEDG[2] = S3;
assign LEDG[3] = c3; 
endmodule

module halfadder(a, b, c, s);
input a, b;
output c, s;

assign s = a ^ b;
assign c = a & b;
endmodule

module fulladder(a,b,ci,co,s);
input a, b, ci;
output co, s;

assign s = a ^ b ^ ci;
assign c = (a & b) | ci & (a ^ b));
endmodule //4:03 PM 30-Mar-18



