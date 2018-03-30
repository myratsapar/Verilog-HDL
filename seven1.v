module sevens(SW, HEX0);
input [6:0] SW;
output [6:0] HEX0;

assign HEX0[0] = SW[0];
assign HEX0[1] = SW[1];
assign HEx0[2] = SW[2];
assign HEX0[3] = SW[3];
assign HEX0[4] = SW[4];
assign HEX0[5] = SW[5];
assign HEX0[6] = SW[6];
endmodule //7:30 PM 30-Mar-18