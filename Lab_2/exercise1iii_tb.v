/* Lab Exercise 1 iii
	Verification of Boolean Algebra
		Prove the following
			X + YZ = (X + Y) (X + Z);
		(if both LHS and RHS contain expressions write Verilog code for both sides and show that LHS=RHS) 
*/

`timescale 1ns/1ns
`include "exercise1iii.v"

module exercise1iii_tb;

reg x, y, z;
wire f, g;

exercise1iii test(f, g, x, y, z);
initial begin
	$dumpfile("exercise1iii.vcd");
	$dumpvars(0, exercise1iii_tb);

	x = 0; y = 0; z = 0; #10;
	x = 0; y = 0; z = 1; #10;
	x = 0; y = 1; z = 0; #10;
	x = 0; y = 1; z = 1; #10;
	x = 1; y = 0; z = 0; #10;
	x = 1; y = 0; z = 1; #10;
	x = 1; y = 1; z = 0; #10;
	x = 1; y = 1; z = 1; #10;

	$display("Test Complete");
end
endmodule
