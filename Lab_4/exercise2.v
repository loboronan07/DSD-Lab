module exercise2(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ~((~((~(a | c | (~(d | d)))) | (~(b | d)) | (~(b | c)))) | (~((~(a | c | (~(d | d)))) | (~(b | d)) | (~(b | c)))));
endmodule
