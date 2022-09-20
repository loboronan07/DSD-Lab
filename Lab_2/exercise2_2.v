module exercise2_2(f, g, h, x, y, z);
input x, y, z;
output f, g, h;

// Given Expression
assign f = y | (x & (~z));

// Using NOR Gates only
nor(i1, x, x);
nor(i2, i1, z);
nor(i3, y, i2);
nor(g, i3, i3);

// Using NAND Gates only
nand(j1, z, z);
nand(j2, x, j1);
nand(j3, y, y);
nand(h, j2, j3);

endmodule
