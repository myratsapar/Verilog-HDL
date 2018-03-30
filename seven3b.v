module seven3b(HEX0, HEX1); //3b;
output [6:0] HEX0, HEX1;

assign HEX1 = 7 'b0110000;
assign HEX0[0] = 1;
assign HEX0[1] = 1;
assign HEX0[2] = 0;
assign HEX0[3] = 0;
assign HEX0[4] = 0;
assign HEX0[5] = 0;
assign HEX0[6] = 0;
endmodule
