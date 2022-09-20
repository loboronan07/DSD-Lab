/* Lab Exercise 2 1
	Application of Boolean Algebra
		1. Given the logical expression Y= (A+BC)(B+CA). Convert it to SOP and simulate using only
			i)AND and OR gates.	ii) NAND gates
*/

`timescale 1ns/1ns
`include "exercise2_1.v"

module exercise2_1_tb;

reg a, b, c;
wire f, g, h;

exercise2_1 test(f, g, h, a, b, c);
initial begin 
        $dumpfile("exercise2_1.vcd");
        $dumpvars(0, exercise2_1_tb);
        
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

        
