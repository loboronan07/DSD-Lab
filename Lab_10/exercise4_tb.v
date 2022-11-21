/* Lab Exercise 4
	Write structural Verilog code for a 5-bit register.
*/

`timescale 1ns/1ns
`include "reg5b.v"
module exercise4_tb();
reg [4:0]D;
reg Clock;
reg Clearn;
wire [4:0]Q;
reg5b test(D, Clock, Clearn, Q);
initial begin
	$dumpfile("exercise4.vcd");
	$dumpvars(0, exercise4_tb);
	Clock=0;
	forever #20 Clock = ~Clock;
end
initial begin 	
	Clearn = 0; #30;
	Clearn = 1; #20;
	D = 25; #40;
	D = 11; #40;
	Clearn = 0; #20;
	Clearn = 1; #20;
	D = 19; #40;	
	$display("Test complete");
end
endmodule
