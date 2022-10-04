module exercise1a(a, b, c, d, f);
input a, b, c, d;
output f;

wire [0:7]W;
wire [2:0]S;

assign W = {1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, ~d};
assign S = {a, b, c};
mux8to1 m1(W, S, f);

endmodule


module mux8to1(W, S, f);
input [0:7]W;
input [2:0]S;
output f;
reg f;

always@(W or S)
        case(S)
                0: f = W[0];
                1: f = W[1];
                2: f = W[2];
                3: f = W[3];
                4: f = W[4];
                5: f = W[5];
                6: f = W[6];
                7: f = W[7];
        endcase
        
endmodule
