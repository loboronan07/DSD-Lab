module exercise4(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ~((~((~(a | (~(d | d)))) | (~(c | (~(d | d)))))) | (~((~(a | (~(d | d)))) | (~(c | (~(d | d)))))));
endmodule
