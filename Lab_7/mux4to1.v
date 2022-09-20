module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
wire [0:1]X;

mux2to1 m1 (W[0:1], S[0], X[0]);
mux2to1 m2 (W[2:3], S[0], X[1]);
mux2to1 m3 (X[0:1], S[1], f);

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





