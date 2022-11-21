/* Additional Exercise 1
	Design and simulate a circuit that determines how many bits in a six-bit unsigned number are high.
*/

`timescale 1ns/1ns
`include "counthigh.v"

module additional1_tb();
reg [5:0]A;
wire [2:0]C;

counthigh test(A, C);
initial begin 
	$dumpfile("additional1.vcd");
	$dumpvars(0, additional1_tb);
	
	A = 6'b000000; #10;
	A = 6'b001000; #10;
	A = 6'b100100; #10;
	A = 6'b011010; #10;
	A = 6'b110110; #10;
	A = 6'b111011; #10;
	A = 6'b111111; #10;
	
	$display("Test Complete");
end
endmodule
