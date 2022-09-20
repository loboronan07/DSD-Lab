/* Lab Exercise 1b
	Simplify the following functions using K-map and implement the circuit using logic gates.
		b) f(A,B,C,D) = ∑m(1,3,4,9,10,12) + D(0,2,5,11)
*/

`timescale 1ns/1ns
`include "exercise1b.v"

module exercise1b_tb();

reg a, b, c, d;
wire f;

exercise1b test(f, a, b, c, d);
initial begin
        $dumpfile("exercise1b.vcd");
        $dumpvars(0, exercise1b_tb);
        
        a = 0; b = 0; c = 0; d = 0; #10;
        a = 0; b = 0; c = 0; d = 1; #10;
        a = 0; b = 0; c = 1; d = 0; #10;
        a = 0; b = 0; c = 1; d = 1; #10;
        a = 0; b = 1; c = 0; d = 0; #10;
        a = 0; b = 1; c = 0; d = 1; #10;
        a = 0; b = 1; c = 1; d = 0; #10;
        a = 0; b = 1; c = 1; d = 1; #10;
        a = 1; b = 0; c = 0; d = 0; #10;
        a = 1; b = 0; c = 0; d = 1; #10;
        a = 1; b = 0; c = 1; d = 0; #10;
        a = 1; b = 0; c = 1; d = 1; #10;
        a = 1; b = 1; c = 0; d = 0; #10;
        a = 1; b = 1; c = 0; d = 1; #10;
        a = 1; b = 1; c = 1; d = 0; #10;
        a = 1; b = 1; c = 1; d = 1; #10;
        
        $display("Test Complete");
end
endmodule
