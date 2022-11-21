module rippleadder(A, B, Cin, S, Cout);
input [3:0]A;
input [3:0]B;
input Cin;
output [3:0]S;
output Cout;
wire [3:0]C;

fulladder f1(A[0], B[0], Cin, S[0], C[1]);
fulladder f2(A[1], B[1], C[1], S[1], C[2]);
fulladder f3(A[2], B[2], C[2], S[2], C[3]);
fulladder f4(A[3], B[3], C[3], S[3], Cout);

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
