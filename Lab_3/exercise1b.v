module exercise1b(f, a, b, c, d);
input a, b, c, d;
output f;
assign f = ((~a) & (~b)) | (b & (~c) & (~d)) | ((~b) & d) | ((~b) & c);
endmodule
