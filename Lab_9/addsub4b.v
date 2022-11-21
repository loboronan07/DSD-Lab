module addsub4b(A, B, s, S, Cout);
input [3:0]A;
input [3:0]B;
input s;
output [3:0]S;
output Cout;
wire [2:0]C;

fulladder f1(A[0], s ^ B[0], s, S[0], C[0]);
fulladder f2(A[1], s ^ B[1], C[0], S[1], C[1]);
fulladder f3(A[2], s ^ B[2], C[1], S[2], C[2]);
fulladder f4(A[3], s ^ B[3], C[2], S[3], Cout);

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
