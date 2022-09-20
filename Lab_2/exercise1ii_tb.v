/* Lab Exercise 1 ii
	Verification of Boolean Algebra
		Prove the following
			X (Y + Z) = XY + XZ;
		(if both LHS and RHS contain expressions write Verilog code for both sides and show that LHS=RHS)
*/

`timescale 1ns/1ns
`include "exercise1ii.v"

module exercise1ii_tb;

reg x, y, z;
wire f, g;

exercise1ii test(f, g, x, y, z);
initial begin
	$dumpfile("exercise1ii.vcd");
	$dumpvars(0, exercise1ii_tb);

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
