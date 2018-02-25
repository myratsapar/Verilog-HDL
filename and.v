module and(LEDR, SW);
output [0:0] LEDR;
input [1:0] SW;
assign LEDR [0] = SW [0] & SW [1];
endmodule //6:25 PM 25-Feb-18