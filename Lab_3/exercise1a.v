module exercise1a(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ((~a) & b) | (c & d) | ((~b) & c) | (b & (~c) & (~d));
endmodule
