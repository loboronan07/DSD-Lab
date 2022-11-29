/* Lab Exercises 2
	Design and simulate the following counters
		5 bit Johnson counter.
*/

`timescale 1ns/1ns
`include "johnson5b.v"

module exercise2_tb();
reg Clk, Reset;
wire [4:0]Q;

johnson5b test(Clk, Reset, Q);
initial begin 
	$dumpfile("exercise2.vcd");
	$dumpvars(0, exercise2_tb);
	
	Clk = 0;
	forever #20 Clk = ~Clk;
end
initial begin
	Reset = 1; #30;
	Reset = 0; #250;
	$display("Test Complete");
end
endmodule
