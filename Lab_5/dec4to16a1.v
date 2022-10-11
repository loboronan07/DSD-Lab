module dec4to16a1(A, En, D);
input [3:0]A;
input En;
output [0:15]D;
wire [0:3]X;

dec2to4 d1(A[3:2], ~En, X);
dec2to4 d2(A[1:0], X[0], D[0:3]);
dec2to4 d3(A[1:0], X[1], D[4:7]);
dec2to4 d4(A[1:0], X[2], D[8:11]);
dec2to4 d5(A[1:0], X[3], D[12:15]);

endmodule


module dec2to4(A, En, D);
input [1:0]A;
input En;
output reg [0:3]D;

always@(A or En)
begin
        case({En, A})
                3'b100: D = 4'b1000;
                3'b101: D = 4'b0100;
                3'b110: D = 4'b0010;
                3'b111: D = 4'b0001;
                default: D = 4'b0000;
        endcase
end
endmodule 
