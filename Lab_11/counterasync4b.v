module counterasync4b(Clk, Reset, Q);
input Clk, Reset;
output [3:0]Q;

dffpos d1(~Q[0], Clk, Reset, Q[0]);
dffpos d2(~Q[1], ~Q[0], Reset, Q[1]);
dffpos d3(~Q[2], ~Q[1], Reset, Q[2]);
dffpos d4(~Q[3], ~Q[2], Reset, Q[3]);

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
