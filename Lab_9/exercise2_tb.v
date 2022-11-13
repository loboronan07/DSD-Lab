/* Lab Exercise 2
	Write behavioral Verilog code to implement the following and simulate
		Four-bit adder/subtractor using a four-bit adder.
*/

`timescale 1ns/1ns
`include "addsub4b.v"

module exercise2_tb();
reg [3:0]A;
reg [3:0]B;
reg s;
wire [3:0]S;
wire neg;

addsub4b test(A, B, s, S, neg);
initial begin
        $dumpfile("exercise2.vcd");
        $dumpvars(0, exercise2_tb);
        
        A = 4'b1011; B = 4'b0100; s = 1'b0; #10;
        A = 4'b1011; B = 4'b0100; s = 1'b1; #10;
        A = 4'b0100; B = 4'b1011; s = 1'b0; #10;
        A = 4'b0100; B = 4'b1011; s = 1'b1; #10;
        
        $display("Test Complete");
end
endmodule
