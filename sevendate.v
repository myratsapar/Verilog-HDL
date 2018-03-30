module sevendate(HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);//23.03.2018

output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;

assign HEX0 = 7 'b0000000;
assign HEX1 = 7 'b1111001;
assign HEX2 = 7 'b1000000;
assign HEX3 = 7 'b0100100;
assign HEX4 = 7 'b0110000;
assign HEX5 = 7 'b1000000;
assign HEX6 = 7 'b0110000;
assign HEX7 = 7 'b0100100;
endmodule //7:48 PM 30-Mar-18