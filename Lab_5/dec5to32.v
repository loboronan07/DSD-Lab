module dec5to32(A, En, D);
input [4:0]A;
input En;
output [0:31]D;
wire [0:3]X;

dec2to4 d1(A[4:3], En, X);
dec3to8 d2(A[2:0], X[0], D[0:7]);
dec3to8 d3(A[2:0], X[1], D[8:15]);
dec3to8 d4(A[2:0], X[2], D[16:23]);
dec3to8 d5(A[2:0], X[3], D[24:31]);

endmodule


module dec3to8(A, En, D);
input [2:0]A;
input En;
output reg [0:7]D;

always@(A or En)
begin
	D = 8'b11111111;
	if(En == 1)
		D[A] = 0;
end

endmodule

module dec2to4(A, En, D);
input [1:0]A;
input En;
output reg [0:3]D;

always@(A or En)
begin
        D = 4'b0000;
        if(En == 1)
        	D[A] = 1;
end

endmodule 
