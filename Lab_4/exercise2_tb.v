/* Lab Exercise 2
	Minimize the following expressions using K-map and simulate using only NOR gates.
		f(A, B, C, D)= ∑m(0,1,2,5,8,9,10)
*/

`timescale 1ns/1ns
`include "exercise2.v"

module exercise2_tb();

reg a, b, c, d;
wire f;

exercise2 test(f, a, b, c, d);
initial begin
        $dumpfile("exercise2.vcd");
        $dumpvars(0, exercise2_tb);
        
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
