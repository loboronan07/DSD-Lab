/* Lab Exercise 1
	Write behavioral Verilog code for a positive edge-triggered D FF with asynchronous active high reset.
*/

`timescale 1ns/1ns
`include "dflipflop.v"

module exercise1_tb();
reg D;
reg Clk;
reg Reset;
wire Q;

dflipflop test(D, Clk, Reset, Q);

initial begin
	$dumpfile("exercise1.vcd");
	$dumpvars(0, exercise1_tb);
	
	Clk = 0;
	forever #10 Clk = ~Clk;
end

initial begin
	D = 0; Reset = 1; #10;
	D = 0; Reset = 0; #20;
	D = 1; Reset = 0; #20;
	D = 1; Reset = 1; #10;
	$display("Test Complete");
end
endmodule


