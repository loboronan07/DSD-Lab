module dffpos(D, Clk, Reset, Q);
input D, Clk, Reset;
output reg Q;
always@(posedge Reset or posedge Clk)
	if(Reset)
		Q <= 0;
	else if(Clk)
		Q <= D;
endmodule
