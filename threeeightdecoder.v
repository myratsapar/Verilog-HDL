module threeToEightDecoder(SW, LEDG);
input [2:0] SW;
output [7:0] LEDG;
ucxsekiz decoder(SW, LEDG);
endmodule

module ucxsekiz(a, b);
input [2:0] a;
output [7:0] b;

assign b[0] = ~a[2] & ~a[1] & ~a[0];
assign b[1] = ~a[2] & ~a[1] & a[0];
assign b[2] = ~a[2] & a[1] & ~a[0];
assign b[3] = ~a[2] & a[1] & a[0];
assign b[4] = a[2] & ~a[1] & ~a[0];
assign b[5] = a[2] & ~a[1] & a[0];
assign b[6] = a[2] & a[1] & ~a[0];
assign b[7] = a[2] & a[1] & a[0];
endmodule//6:39 PM 30-Mar-18


