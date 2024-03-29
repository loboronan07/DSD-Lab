/* Lab Exercise 3
	Simulate a circuit that has four inputs, x1, x2, x3, and x4, which produces an output value of 1
	whenever three or more of the input variables have the value 1; otherwise, the output has to be 0.
*/

`timescale 1ns/1ns
`include "exercise3.v"

module exercise3_tb();

reg x1, x2, x3, x4;
wire f;

exercise3 test(f, x1, x2, x3, x4);
initial begin
        $dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
        x1 = 0; x2 = 0; x3 = 0; x4 = 0; #10;
        x1 = 0; x2 = 0; x3 = 0; x4 = 1; #10;
        x1 = 0; x2 = 0; x3 = 1; x4 = 0; #10;
        x1 = 0; x2 = 0; x3 = 1; x4 = 1; #10;
        x1 = 0; x2 = 1; x3 = 0; x4 = 0; #10;
        x1 = 0; x2 = 1; x3 = 0; x4 = 1; #10;
        x1 = 0; x2 = 1; x3 = 1; x4 = 0; #10;
        x1 = 0; x2 = 1; x3 = 1; x4 = 1; #10;
        x1 = 1; x2 = 0; x3 = 0; x4 = 0; #10;
        x1 = 1; x2 = 0; x3 = 0; x4 = 1; #10;
        x1 = 1; x2 = 0; x3 = 1; x4 = 0; #10;
        x1 = 1; x2 = 0; x3 = 1; x4 = 1; #10;
        x1 = 1; x2 = 1; x3 = 0; x4 = 0; #10;
        x1 = 1; x2 = 1; x3 = 0; x4 = 1; #10;
        x1 = 1; x2 = 1; x3 = 1; x4 = 0; #10;
        x1 = 1; x2 = 1; x3 = 1; x4 = 1; #10;
               
        $display("Test Complete");
end
endmodule
