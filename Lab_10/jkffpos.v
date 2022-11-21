module jkffpos(J, K, Reset, Clk, Q);
input J, K, Clk;
output reg Q;

always@(posedge Clk)
	if(Reset)
		Q <= 0;
	else if(!J & K) 
		Q <= 0;
	else if(J & !K)
		Q <= 1;
	else if(J & K)
		Q <= ~Q;
endmodule
