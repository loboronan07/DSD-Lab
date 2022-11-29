/* Lab Exercises 3
	Design and simulate the following counters
		4 bit asynchronous up counter.
*/

`timescale 1ns/1ns
`include "counterasync4b.v"

module exercise3_tb();
reg Clk, Reset;
wire [3:0]Q;

counterasync4b test(Clk, Reset, Q);
initial begin 
	$dumpfile("exercise3.vcd");
	$dumpvars(0, exercise3_tb);
	
	Clk = 0;
	forever #20 Clk = ~Clk;
end
initial begin
	Reset = 1; #30;
	Reset = 0; #250;
	$display("Test Complete");
end
endmodule
