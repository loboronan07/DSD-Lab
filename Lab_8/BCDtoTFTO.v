module BCDtoTFTO(BCD, TFTO);
input [3:0]BCD;
output [3:0]TFTO;

assign TFTO[0] = BCD[0];
mux4to1 m1({BCD[1], 1'b0, ~BCD[1], 1'b0}, BCD[3:2], TFTO[1]);
mux4to1 m2({BCD[2], ~BCD[2], 1'b0, 1'b0}, {1'b0, BCD[3]}, TFTO[2]);
mux4to1 m3({BCD[3], 1'b0, 1'b0, 1'b1}, BCD[2:1], TFTO[3]);

endmodule


module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
reg f;

always@(W or S)
        f = W[S];
        
endmodule
