/* Lab Exercise 2 3
	Application of Boolean Algebra
		3. Simulate f (x1, x2, x3) =∏M (0, 1, 5, 7) using
			i)NOR gates only	ii) NAND gates only
*/

`timescale 1ns/1ns
`include "exercise2_3.v"

module exercise2_3_tb;

reg x1, x2, x3;
wire f, g, h;

exercise2_3 test(f, g, h, x1, x2, x3);
initial begin 
        $dumpfile("exercise2_3.vcd");
        $dumpvars(0, exercise2_3_tb);
        
        x1 = 0; x2 = 0; x3 = 0; #10;
        x1 = 0; x2 = 0; x3 = 1; #10;
        x1 = 0; x2 = 1; x3 = 0; #10;
        x1 = 0; x2 = 1; x3 = 1; #10;
        x1 = 1; x2 = 0; x3 = 0; #10;
        x1 = 1; x2 = 0; x3 = 1; #10;
        x1 = 1; x2 = 1; x3 = 0; #10;
        x1 = 1; x2 = 1; x3 = 1; #10;
        
        $display("Test Complete");
end 
endmodule
