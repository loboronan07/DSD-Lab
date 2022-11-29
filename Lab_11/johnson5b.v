module johnson5b(Clk, Reset, Q);
input Clk, Reset;
output [4:0]Q;

dffpos d1(~Q[4], Clk, Reset, Q[0]);
dffpos d2(Q[0], Clk, Reset, Q[1]);
dffpos d3(Q[1], Clk, Reset, Q[2]);
dffpos d4(Q[2], Clk, Reset, Q[3]);
dffpos d5(Q[3], Clk, Reset, Q[4]);

endmodule


module dffpos(D, Clk, Reset, Q);
input D, Clk, Reset;
output reg Q;
always@(posedge Reset or posedge Clk)
	if(Reset)
		Q <= 0;
	else if(Clk)
		Q <= D;
endmodule
