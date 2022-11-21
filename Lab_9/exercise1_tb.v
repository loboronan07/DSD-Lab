/* Lab Exercise 1
	Write behavioral Verilog code to implement the following and simulate
		Half adder, full adder and decomposed full adder.
*/

`timescale 1ns/1ns
`include "adders.v"

module exercise1_tb();
reg x, y, z;
wire s1, c1, s2, c2, s3, c3;

halfadder test1(x, y, s1, c1);
fulladder test2(x, y, z, s2, c2);
fulladderdec test3(x, y, z, s3, c3);
initial begin
        $dumpfile("exercise1.vcd");
        $dumpvars(0, exercise1_tb);
        
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
