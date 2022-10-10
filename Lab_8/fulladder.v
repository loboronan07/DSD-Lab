module fulladder(Cin, A, B, S, Cout);
input Cin, A, B;
output S, Cout;

wire x;

mux2to1 m1({B, ~B}, A, x);
mux2to1 m2({x, ~x}, Cin, S);

mux2to1 m3({A&B, A|B}, Cin, Cout);

endmodule

module mux2to1(W, S, f);
input [0:1]W;
input S;
output f;
reg f;
always@(W or S)
        f = W[S];
endmodule
