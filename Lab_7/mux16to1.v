module mux16to1(W, S, f);
input [0:15]W;
input [3:0]S;
output f;
wire [0:3]X;

mux4to1 m1(W[0:3], S[1:0], X[0]);
mux4to1 m2(W[4:7], S[1:0], X[1]);
mux4to1 m3(W[8:11], S[1:0], X[2]);
mux4to1 m4(W[12:15], S[1:0], X[3]);
mux4to1 m5(X[0:3], S[3:2], f);

endmodule

module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
reg f;

always@(W or S)
        f = S[1] ? (S[0] ? W[1] : W[0]) : (S[0] ? W[3] : W[2]);
        
endmodule




