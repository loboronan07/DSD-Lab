/* Lab Exercise 1b
	Implement the following functions using the specified multiplexers and write the Verilog code for
the same.
		b. G(a,b,c,d) = Σm(0,2,3,5,7) using 4 to 1 multiplexer.
*/
`timescale 1ns/1ns
`include "exercise1b.v"

module exercise1b_tb();

reg a, b, c, d;
wire f;

exercise1b test(a, b, c, d, f);
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
