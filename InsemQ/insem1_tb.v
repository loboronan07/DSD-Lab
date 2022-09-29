/* Insem 1 DSCO 2022
	Implement the function f = Σm(0, 1, 4, 6, 7) using a 4to1 multiplexer.
*/	

`timescale 1ns/1ns
`include "insem1.v"

module insem1_tb();

reg a, b, c;
wire f;

insem1 test(a, b, c, f);
initial begin
	$dumpfile("insem1.vcd");
	$dumpvars(0, insem1_tb);
	
	a = 0; b = 0; c = 0; #10;
	a = 0; b = 0; c = 1; #10;
	a = 0; b = 1; c = 0; #10;
	a = 0; b = 1; c = 1; #10;
	a = 1; b = 0; c = 0; #10;
	a = 1; b = 0; c = 1; #10;
	a = 1; b = 1; c = 0; #10;
	a = 1; b = 1; c = 1; #10;
	
	$display("Test Complete");
end
endmodule
