/* Lab Exercise 2b
	Simplify the following functions using K-map and implement the circuit using logic gates.
		b) f(A,B,C,D) = ∏M(6,9,10,11,12) + D(2,4,7,13)
*/

`timescale 1ns/1ns
`include "exercise2b.v"

module exercise2b_tb();

reg a, b, c, d;
wire f;

exercise2b test(f, a, b, c, d);
initial begin
        $dumpfile("exercise2b.vcd");
        $dumpvars(0, exercise2b_tb);
        
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
