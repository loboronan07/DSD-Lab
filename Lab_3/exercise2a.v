module exercise2a(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = (b | c) & ((~b) | d);
endmodule
