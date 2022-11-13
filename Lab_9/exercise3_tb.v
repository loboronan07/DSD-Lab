/* Lab Exercise 3
	Write behavioral Verilog code to implement the following and simulate
		2-bit multiplier using a 2-bit adder and basic gates.
*/

`timescale 1ns/1ns
`include "multiplier.v"

module exercise3_tb();
reg [1:0]A;
reg [1:0]B;
wire [3:0]P;

multiplier test(A, B, P);
initial begin
	$dumpfile("exercise3.vcd");
	$dumpvars(0, exercise3_tb);
	
	for(integer i=0; i<4; i=i+1)
	begin 
		A = i;
		for(integer j=0; j<4; j=j+1)
		begin 
			B = j;
			#10;
		end
	end
	
	$display("Test Complete");
end
endmodule
