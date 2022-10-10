/* Lab Exercise 2b
	Implement a 3 input majority function using the given multiplexers and write the Verilog code for
the same.
		b. Only 2 to 1 multiplexer.
*/

`timescale 1ns/1ns
`include "exercise2b.v"

module exercise2b_tb();

reg a, b, c;
wire f;

exercise2b test(a, b, c, f);
initial begin
        $dumpfile("exercise2b.vcd");
        $dumpvars(0, exercise2b_tb);
        
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
