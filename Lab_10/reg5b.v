module reg5b(D, Clk, Clearn, Q);
input [4:0]D;
input Clearn;
input Clk;
output [4:0]Q;

dffpos d1(D[0], Clk, Clearn, Q[0]);
dffpos d2(D[1], Clk, Clearn, Q[1]);
dffpos d3(D[2], Clk, Clearn, Q[2]);
dffpos d4(D[3], Clk, Clearn, Q[3]);
dffpos d5(D[4], Clk, Clearn, Q[4]);

endmodule

module dffpos(D, Clk, Resetn, Q);
input D, Clk, Resetn;
output reg Q;
always@(negedge Resetn or posedge Clk)
	if(!Resetn)
		Q <= 0;
	else if(Clk)
		Q <= D;
endmodule
