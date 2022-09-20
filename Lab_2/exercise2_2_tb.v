/* Lab Exercise 2 2
	Application of Boolean Algebra
		2. Simulate F(x,y,z) = ∑m(2,3,4,6,7) using
			i)NOR gates only	ii) NAND gates only
*/
`timescale 1ns/1ns
`include "exercise2_2.v"

module exercise2_2_tb;

reg x, y, z;
wire f, g, h;

exercise2_2 test(f, g, h, x, y, z);
initial begin 
        $dumpfile("exercise2_2.vcd");
        $dumpvars(0, exercise2_2_tb);
        
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
