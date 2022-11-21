/* Lab Exercise 1
	Write behavioral Verilog code for a positive edge-triggered D FF with asynchronous active high reset.
*/

`timescale 1ns/1ns
`include "dffpos.v"
module exercise1_tb();
reg D, Clock, Reset;
wire Q;
dffpos test(D, Clock, Reset, Q);
initial begin
	$dumpfile("exercise1.vcd");
	$dumpvars(0, exercise1_tb);
	Clock=0;
	forever #20 Clock = ~Clock;
end
initial begin 	
	Reset = 0;
	#10;
	D = 1; #20;
	D = 0; #20;
	D = 1; #20; 
	Reset = 1;	
	#20;
	Reset = 0;
	D = 1; #20;
	D = 0; #20;
	$display("Test complete");
end
endmodule
