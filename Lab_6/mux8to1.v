module mux8to1(W, S, f);
input [0:7]W;
input [2:0]S;
output f;
wire [0:7]X;
wire [0:7]D;

dec3to8 d(S, 1'b1, D);

and(X[0], W[0], D[0]);
and(X[1], W[1], D[1]);
and(X[2], W[2], D[2]);
and(X[3], W[3], D[3]);
and(X[4], W[4], D[4]);
and(X[5], W[5], D[5]);
and(X[6], W[6], D[6]);
and(X[7], W[7], D[7]);
	
or(f, X[0], X[1], X[2], X[3], X[4], X[5], X[6], X[7]);

endmodule


module dec3to8(A, En, D);
input [2:0]A;
input En;
output reg [0:7]D;

always@(A or En)
begin 
	D = 0;
	if(En == 1)
		D[A] = 1;
end
endmodule
