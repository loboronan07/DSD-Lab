module exercise2_1(f, g, h, a, b, c);
input a, b, c;
output f, g, h;

// Given Expression
and(x1, b, c);
or(x2, a, x1);
and(x3, c, a);
or(x4, b, x3);
and(f, x2, x4);

// Using AND and OR gates
and(y1, a, b);
and(y2, b, c);
and(y3, a, c);
or(g, y1, y2, y3);

// Using NAND Gates only
nand(z1, a, b);
nand(z2, b, c);
nand(z3, a, c);
nand(h, z1, z2, z3);

endmodule


