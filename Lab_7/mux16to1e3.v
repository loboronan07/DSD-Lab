module mux16to1e3(W, S, f);
input [0:15]W;
input [3:0]S;
output f;
wire [0:1]X;

mux8to1 m1(W[0:7], S[2:0], X[0]);
mux8to1 m2(W[8:15], S[2:0], X[1]);
mux2to1 m3(X[0:1], S[3], f);

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


module mux2to1(W, S, f);
input [0:1]W;
input S;
output f;
reg f;
always@(W or S)
        if(S == 0) 
                f = W[0];
        else    
                f = W[1];
        
endmodule

