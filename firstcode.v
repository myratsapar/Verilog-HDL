module firstcode(LEDR, LEDG);
output [2:0] LEDR;
output [0:0] LEDG;
assign LEDR [0] = 1;
assign LEDR [1] = 0;
assign LEDR [2] = 1;
assign LEDG [0] = 1;
endmodule