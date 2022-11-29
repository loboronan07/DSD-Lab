/* Lab Exercises 4
	Design and simulate the following counters
		4 bit synchronous up counter.
*/

`timescale 1ns/1ns
`include "countersync4b.v"

module exercise4_tb();
reg Clk, Reset;
wire [3:0]Q;

countersync4b test(Clk, Reset, Q);
initial begin 
	$dumpfile("exercise4.vcd");
	$dumpvars(0, exercise4_tb);
	
	Clk = 0;
	forever #20 Clk = ~Clk;
end
initial begin
	Reset = 1; #30;
	Reset = 0; #250;
	$display("Test Complete");
end
endmodule
