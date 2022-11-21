/* Lab Exercise 3
	Write behavioral Verilog code for a positive edge-triggered JK FF with synchronous active high reset.
*/

`timescale 1ns/1ns
`include "jkffpos.v"

module exercise3_tb();
reg J, K, Clk, Reset;
wire Q;

jkffpos test(J, K, Reset, Clk, Q);
initial begin
	$dumpfile("exercise3.vcd");
	$dumpvars(0, exercise3_tb);
	Clock=0;
	forever #20 Clock = ~Clock;
end
initial begin 
	J = 0; K = 0; Reset = 0; #30;
	$display("Test Complete");
end
endmodule
