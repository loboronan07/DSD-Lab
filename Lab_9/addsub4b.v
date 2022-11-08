module addsub4b(A, B, s, O, neg);
input [3:0]A;
input [3:0]B;
input s;
output [3:0]O;
output neg;
wire [3:0]S;
wire [4:0]C;

fulladder f1(A[0], s ^ B[0], s, S[0], C[1]);
fulladder f2(A[1], s ^ B[1], C[1], S[1], C[2]);
fulladder f3(A[2], s ^ B[2], C[2], S[2], C[3]);
fulladder f4(A[3], s ^ B[3], C[3], S[3], C[4]);

complement2 c(S, C[3], O);

assign neg = C[3];

endmodule


module fulladder(x, y, z, s, c);
input x, y, z;
output reg s, c;
always@(x, y, z)
begin
        s = x ^ y ^ z;
        c = x&y | y&z | z&x;
end
endmodule


module halfadder(x, y, s, c);
input x, y;
output reg s, c;
always@(x, y)
begin
        s = x ^ y;
        c = x & y;
end
endmodule


module complement2(I, En, O);
input [3:0]I;
input En;
output [3:0]O;
wire [4:0]C;

halfadder h1(En ^ I[0], En, O[0], C[1]);
halfadder h2(En ^ I[1], C[1], O[1], C[2]);
halfadder h3(En ^ I[2], C[2], O[2], C[3]);
halfadder h4(En ^ I[3], C[3], O[3], C[4]);

endmodule






