module exercise2a(a, b, c, f);
input a, b, c;
output f;

wire [0:1]X;

mux2to1 m({b&c, b|c}, a, f);

endmodule

module mux2to1(W, S, f);
input [0:1]W;
input S;
output f;
reg f;
always@(W or S)
        f = S ? W[1] : W[0];
endmodule
