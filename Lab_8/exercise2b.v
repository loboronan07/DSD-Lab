module exercise2b(a, b, c, f);
input a, b, c;
output f;

wire [0:1]X;

mux2to1 m1({1'b0, c}, b, X[0]);
mux2to1 m2({c, 1'b1}, b, X[1]);
mux2to1 m3(X, a, f);

endmodule


module mux2to1(W, S, f);
input [0:1]W;
input S;
output f;
reg f;
always@(W or S)
        f = S ? W[1] : W[0];
endmodule
