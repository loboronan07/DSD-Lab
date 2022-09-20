module exercise1(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ~((~((~(a & (~(b & b)))) & (~(c & (~(d & d)))))) & (~((~(a & (~(b & b)))) & (~(c & (~(d & d)))))));
endmodule

