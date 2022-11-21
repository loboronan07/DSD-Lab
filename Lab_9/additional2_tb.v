/* Lab Exercise 2
	Design and write Verilog code for a 2 digit BCD adder.
*/

// bcdadder2b.v is not yet implemented

`timescale 1ns/1ns
`include "bcdadder2b.v"

module additional2_tb();
reg [7:0]A;
reg [7:0]B;
wire C;
wire [7:0]S;

bcdadder2b test(A, B, S, C);
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
