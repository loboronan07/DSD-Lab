module BCDtoXS3(BCD, XS3);
input [3:0]BCD;
output [3:0]XS3;

mux8to1 m1({~BCD[0], BCD[0], ~BCD[0], BCD[0], ~BCD[0], 1'b0, 1'b0, 1'b0}, BCD[3:1], XS3[1]); 
mux8to1 m2({BCD[0], 1'b1, ~BCD[0], 1'b0, BCD[0], 1'b0, 1'b0, 1'b0}, BCD[3:1], XS3[2]); 
mux8to1 m3({1'b0, 1'b0, BCD[0], 1'b1, 1'b1, 1'b0, 1'b0, 1'b0}, BCD[3:1], XS3[3]); 
assign XS3[0] = ~BCD[0];

endmodule


module mux8to1(W, S, f);
input [0:7]W;
input [2:0]S;
output f;
reg f;

always@(W or S)
        f = W[S];
        
endmodule
