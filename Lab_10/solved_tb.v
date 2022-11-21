`timescale 1ns/1ns
`include "flipflop.v"
module solved_tb();
reg D, Clock, Resetn;
wire Q;
flipflop f1(D, Clock, Resetn, Q);
initial begin
	$dumpfile("solved.vcd");
	$dumpvars(0, solved_tb);
	Clock=0;
	forever #20 Clock = ~Clock;
end
initial begin 	
	D=1; Resetn=1; #20;
	D=1; Resetn=1; #20;
	D=1; Resetn=1; #20;	
	D=0; Resetn=1; #20;
	$display("Test complete");
end
endmodule
