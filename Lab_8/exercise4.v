module exercise4(BIN, GRAY);
input [3:0]BIN;
output [3:0]GRAY;

assign GRAY[3] = BIN[3];
mux4to1 m1({BIN[2], ~BIN[2], 1'b0, 1'b0}, {1'b0, BIN[3]}, GRAY[2]);
mux4to1 m2({BIN[1], ~BIN[1], 1'b0, 1'b0}, {1'b0, BIN[2]}, GRAY[1]);
mux4to1 m3({BIN[0], ~BIN[0], 1'b0, 1'b0}, {1'b0, BIN[1]}, GRAY[0]);

endmodule


module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
reg f;

always@(W or S)
        f = W[S];
        
endmodule
