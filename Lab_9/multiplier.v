module multiplier(A, B, P);
input [1:0]A;
input [1:0]B;
output [3:0]P;
wire [3:0]X;

assign P[0] = A[0] & B[0];
assign X[0] = A[1] & B[0];
assign X[1] = A[0] & B[1];
assign X[2] = A[1] & B[1];
halfadder h1(X[0], X[1], P[1], X[3]);
halfadder h2(X[2], X[3], P[2], P[3]);

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
