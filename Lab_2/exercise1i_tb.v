/* Lab Exercise 1 i
	Verification of Boolean Algebra
		Prove the following
			(A’)’ = A;
		(if both LHS and RHS contain expressions write Verilog code for both sides and show that LHS=RHS)
*/

`timescale 1ns/1ns
`include "exercise1i.v"

module exercise1i_tb;

reg a;
wire f;

exercise1i test(f, a);
initial begin
	$dumpfile("exercise1i.vcd");
	$dumpvars(0, exercise1i_tb);

	a = 0; #10;
	a = 1; #10;

	$display("Test Complete");
end
endmodule
