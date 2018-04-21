module toggleff(SW, KEY, LEDG);
input [1:0] SW;
input [0:0] KEY;
output [3:0] LEDG;

wire Clk = KEY[0];
wire Clr = SW[0];
wire En = SW[1];

wire [3:0] = T, Qs;

t_flipflop T0 (En, Clk, Clr, Qs[0]);
assign T[0] = En & Qs[0];

t_flipflop T1 (T[0], Clk, Clr, Qs[1]);
assign T[1] = T[0] & Qs[1];

t_flipflop T2 (T[1], Clk, Clr, Qs[2]);	
assign T[2] = T[1] & Qs[2];

t_flipflop T3 (T[2], Clk, Clr, Qs[3]);
assign LEDG = Qs;
endmodule

module t_flipflop (En, Clk, Clr, Q);
  input En, Clk, Clr;
  output reg Q;

  always @ (posedge Clk)
    if (Clr)
      Q = 0;
    else if (En)
      Q = ~Q;

endmodule //21-Apr-18 8:29 PM
