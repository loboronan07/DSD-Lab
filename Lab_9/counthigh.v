module counthigh(A, C);
input [5:0]A;
output [2:0]C;
wire [2:0]X0, X1, X2, X3, X4, X5;

assign X0 = 0;
adder a1(X0, A[0], X1);
adder a2(X1, A[1], X2);
adder a3(X2, A[2], X3);
adder a4(X3, A[3], X4);
adder a5(X4, A[4], X5);
adder a6(X5, A[5], C);

endmodule


module adder(A, Cin, S);
input [2:0]A;
input Cin;
output [2:0]S;

assign S = A + Cin;

endmodule
