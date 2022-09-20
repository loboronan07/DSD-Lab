module exercise2i(a, b, c, d, f, g);
input a, b, c, d;
output f, g;

and(x1, a, b);
not(x2, x1);
xor(f, d, x2, c);

or(x3, b, c, d);
not(g, x3);

endmodule
