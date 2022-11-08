module fulladder(x, y, z, s, c);
input x, y, z;
output s, c;
assign s = x ^ y ^ z;
assign c = x&y | y&z | z&x;
endmodule

