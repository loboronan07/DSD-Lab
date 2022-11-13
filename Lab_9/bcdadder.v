module bcdadder(A, B, S, C);
input [3:0]A;
input [3:0]B;
output [3:0]S;
output [3:0]C;
wire [3:0]X;
wire c1;

adder4b a1(A, B, X, c1);
assign c2 = c1 | (X[3]&X[2]) | (X[3]&X[1]);
adder4b a2(X, {1'b0, c2, c2, 1'b0}, S, c3);
assign C = (c2 == 1) ? 1 : 0;

endmodule


module adder4b(A, B, S, C);
input [3:0]A;
input [3:0]B;
output [3:0]S;
output C;

assign {C, S} = A + B;

endmodule

