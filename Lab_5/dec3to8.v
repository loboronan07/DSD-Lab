module dec3to8(A, En, D);
input [2:0]A;
input En;
output [0:7]D;

dec2to4 d1(A[1:0], En&(~A[2]), D[0:3]);
dec2to4 d2(A[1:0], En&A[2], D[4:7]);

endmodule

module dec2to4(A, En, D);
input [1:0]A;
input En;
output reg [0:3]D;

always@(A, En)
begin
        D = 4'b0000;
        if(En == 1)
                if(A == 0)
                        D[0] = 1;
                else if(A == 1)
                        D[1] = 1;
                else if(A == 2)
                        D[2] = 1;
                else
                        D[3] = 1;
end
endmodule      

                 
                        
