module FF (KEY, LEDG);
input [0:0] KEY;
output [3:0] LEDG;
wire [3:0] q;

jk_flipflop(1, 1, KEY[0], q[0]);
jk_flipflop(1, 1, ~q[0],  q[1]);
jk_flipflop(1, 1, ~q[1], q[2]);
jk_flipflop(1, 1, ~q[2], q[3]);

assign LEDG = q;
endmodule

module jk_flipflop(J, K, clk, Q);
  input J, K, clk;
  output reg Q;
  always @(posedge clk) begin
    if(J==0 && K==1) begin
      Q = 0;
    end
    else if(J==1 && K==0) begin
      Q = 1;
    end
    else if(J==1 & K==1) begin
      Q = ~Q;
    end
  end
endmodule