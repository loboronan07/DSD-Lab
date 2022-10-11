module dec4to16e2(A, En, D);
input [3:0]A;
input En;
output [0:15]D;

dec3to8 d1(A[2:0], En&(~A[3]), D[0:7]);
dec3to8 d2(A[2:0], En&A[3], D[8:15]);

endmodule


module dec3to8(A, En, D);
input [2:0]A;
input En;
output reg [0:7]D;
integer k;

always@(A or En)
begin 
        for (k = 0; k < 8; k++)
                if ((A == k) && (En == 1))
                        D[k] = 1;
                else
                        D[k] = 0;
end
endmodule
        
