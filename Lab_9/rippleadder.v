module rippleadder(A, B, S);
input [3:0]A;
input [3:0]B;
output [3:0]S;
wire [4:0]C;

fulladder f1(A[0], B[0], 1'b0, S[0], C[1]);
fulladder f2(A[1], B[1], C[1], S[1], C[2]);
fulladder f3(A[2], B[2], C[2], S[2], C[3]);
fulladder f4(A[3], B[3], C[3], S[3], C[4]);

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
