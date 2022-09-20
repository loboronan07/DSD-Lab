module exercise2b(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ((~a) | (~b) | c) & ((~a) | b | (~d)) & ((~a) | b | (~c)) & (a | (~b) | (~c));
endmodule
