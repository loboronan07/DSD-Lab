module exercise1i(a, b, c, d, f);
input a, b, c, d;
output f;
and(x1, a, b);
or(x2, x1, c);
not(x3, x2);
and(x4, x3, d);
or(x5, x2, d);
and(f, x5, x4);
endmodule
