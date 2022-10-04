module exercise1b(a, b, c, d, f);
input a, b, c, d;
output f;

wire x;

mux4to1 m1({~d, 1'b1, d, d}, {b, c}, x);
mux4to1 m2({x, 1'b0, 1'b0, 1'b0}, {1'b0, a}, f);

endmodule


module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
reg f;

always@(W or S)
        f = S[1] ? (S[0] ? W[3] : W[2]) : (S[0] ? W[1] : W[0]);
        
endmodule
