module fulladder(x, y, z, s, c);
input x, y, z;
output s, c;
assign s = x ^ y ^ z;
assign c = x&y | y&z | z&x;
endmodule


module halfadder(x, y, s, c);
input x, y;
output reg s, c;
always@(x, y)
begin
        s = x ^ y;
        c = x & y;
end
endmodule


module fulladderdec(x, y, z, s, c);
input x, y, z;
output s, c;
wire i, j, k;
halfadder h1(x, y, i, j);
halfadder h2(i, z, s, k);
assign c = j|k;
endmodule
