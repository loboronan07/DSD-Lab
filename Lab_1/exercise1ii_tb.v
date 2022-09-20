/* Lab Exercise 1 ii
	Write the Verilog code to implement the circuit in the following figure.
		Figure in Manual
	ii)Using continuous assignment statements.

*/

`timescale 1ns/1ns
`include "exercise1ii.v"

module exercise1ii_tb;

reg a, b, c, d;
wire f;

exercise1ii test(a, b, c, d, f);
initial begin
        $dumpfile("exercise1ii.vcd");
        $dumpvars(0, exercise1ii_tb);
        
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
