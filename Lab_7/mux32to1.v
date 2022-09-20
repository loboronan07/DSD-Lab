module mux32to1(W, S, f);
input [0:31]W;
input [4:0]S;
output f;
wire [0:3]X;

mux8to1 m1(W[0:7], S[2:0], X[0]);
mux8to1 m2(W[8:15], S[2:0], X[1]);
mux8to1 m3(W[16:23], S[2:0], X[2]);
mux8to1 m4(W[24:31], S[2:0], X[3]);
mux4to1 m5(X[0:3], S[4:3], f);

endmodule


module mux8to1(W, S, f);
input [0:7]W;
input [2:0]S;
output f;
reg f;

always@(W or S)
        if(S == 0) 
                f = W[0];
        else if(S == 1) 
                f = W[1];
        else if(S == 2) 
                f = W[2];
        else if(S == 3) 
                f = W[3];
        else if(S == 4) 
                f = W[4];
        else if(S == 5) 
                f = W[5];
        else if(S == 6) 
                f = W[6];
        else if(S == 7) 
                f = W[7];
        
endmodule


module mux4to1(W, S, f);
input [0:3]W;
input [1:0]S;
output f;
reg f;

always@(W or S)
        f = S[1] ? (S[0] ? W[3] : W[2]) : (S[0] ? W[1] : W[0]);
        
endmodule

