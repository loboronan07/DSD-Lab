module exercise2_3(f, g, h, x1, x2, x3);
input x1, x2, x3;
output f, g, h;

// Given Expression
assign f = (x1 | x2) & ((~x1) | (~x3));

// Using NOR Gates only
nor(i1, x1, x2);
nor(i3, x1, x1);
nor(i4, x3, x3);
nor(i5, i3, i4);
nor(g, i3, i5);

// Using NAND Gates only
nand(j1, x1, x1);
nand(j2, x2, x2);
nand(j3, j1, j2);

nand(j4, x1, x1);
nand(j5, x3, x3);
nand(j6, j4, j4);
nand(j7, j6, j6);

nand(j8, j3, j7);
nand(h, j8, j8);

endmodule
