/* Lab Exercises 1
	Design and simulate the following counters
		4-bit ring counter.
*/

`timescale 1ns/1ns
`include "ring4b.v"

module exercise1_tb();
reg Clk, Ori;
wire [3:0]Q;

ring4b test(Clk, Ori, Q);
initial begin 
	$dumpfile("exercise1.vcd");
	$dumpvars(0, exercise1_tb);
	
	Clk = 0;
	forever #20 Clk = ~Clk;
end
initial begin
	Ori = 1; #30;
	Ori = 0; #200;
	$display("Test Complete");
end
endmodule


