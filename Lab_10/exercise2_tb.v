/* Lab Exercise 2
	Write behavioral Verilog code for a negative edge triggered T FF with asynchronous active low reset.
*/

`timescale 1ns/1ns
`include "tffneg.v"
module exercise2_tb();
reg T, Clock, Resetn;
wire Q;
tffneg test(T, Clock, Resetn, Q);
initial begin
	$dumpfile("exercise2.vcd");
	$dumpvars(0, exercise2_tb);
	Clock=0;
	forever #20 Clock = ~Clock;
end
initial begin 	
	T = 0;
	Resetn = 0; #10;
	Resetn = 1; #20;
	T = 1; #60;
	T = 0; #20;
	T = 1; #20;
	Resetn = 0; #20;
	Resetn = 1; #20;
	$display("Test complete");
end
endmodule
