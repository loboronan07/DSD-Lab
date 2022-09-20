module exercise1iii(f, g, x, y, z);
input x, y, z;
output f, g;
assign f = x | (y & z);
assign g = (x | y) & (x | z);
endmodule