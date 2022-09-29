module insem1(a, b, c, f);
input a, b, c;
output f;
wire [0:3]W;
wire [1:0]S;

assign W = {1'b1, 1'b0, ~c, 1'b1};
assign S = {a, b};

mux4to1 m1(W, S, f);

endmodule

module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output reg f;

always@(W or S)
	f = S[1] ? (S[0] ? W[3] : W[2]) : (S[0] ? W[1] : W[0]);

endmodule
