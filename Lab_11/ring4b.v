module ring4b(Clk, Ori, Q);
input Clk, Ori;
output [3:0]Q;

dffpos d1(Q[3], Clk, Ori, 1'b0, Q[0]);
dffpos d2(Q[0], Clk, 1'b0, Ori, Q[1]);
dffpos d3(Q[1], Clk, 1'b0, Ori, Q[2]);
dffpos d4(Q[2], Clk, 1'b0, Ori, Q[3]);

endmodule


module dffpos(D, Clk, Pre, Clr, Q);
input D, Clk, Pre, Clr;
output reg Q;
always@(posedge Clk)
	if(Pre)
		Q <= 1;
	else if(Clr) 
		Q <= 0;
	else if(Clk)
		Q <= D;
endmodule
