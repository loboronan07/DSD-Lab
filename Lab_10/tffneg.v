module tffneg(T, Clk, Resetn, Q);
input T, Clk, Resetn;
output reg Q;
always@(negedge Resetn or negedge Clk)
	if(!Resetn) 
		Q <= 0;
	else if(T)
		Q = ~Q;
endmodule
