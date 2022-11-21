module dflipflop(D, Clk, Reset, Q);
input D, Clk, Reset;
output reg Q;

always@(posedge Reset or posedge Clk)
begin
	if(Reset == 1)
		Q <= 0;
	else 
		Q <= D;
end
endmodule
