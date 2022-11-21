/* Lab Exercise 4
	Write behavioral Verilog code to implement the following and simulate
		Single-digit BCD adder using a four-bit adder(s).
*/

`timescale 1ns/1ns
`include "bcdadder.v"

module exercise4_tb();
reg [3:0]A;
reg [3:0]B;
wire [3:0]C;
wire [3:0]S;

bcdadder test(A, B, S, C);
initial begin
	$dumpfile("exercise4.vcd");
	$dumpvars(0, exercise4_tb);
	
	for(integer i=0; i<10; i=i+1)
	begin
		A = i;
		for(integer j=0; j<10; j=j+1)
		begin
			B = j;
			#10;
		end
	end
	
	$display("Test Complete");
end
endmodule
