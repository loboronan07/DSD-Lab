module fulladder(Cin, A, B, S, Cout);
input Cin, A, B;
output S, Cout;

wire [0:1]X;
wire x;

mux2to1 m1({B, ~B}, A, x);
mux2to1 m2({x, ~x}, Cin, S);

mux2to1 m3({1'b0, B}, A, X[0]);
mux2to1 m4({B, 1'b1}, A, X[1]);
mux2to1 m5(X, Cin, Cout);

endmodule

module mux2to1(W, S, f);
input [0:1]W;
input S;
output f;
reg f;
always@(W or S)
        f = S ? W[1] : W[0];
endmodule
