/* Lab Exercise 3
	Write behavioral Verilog code for an 8 to 1 multiplexer using case statement. Use this along with a
	2 to 1 multiplexer to write the hierarchical code for a 16 to 1 multiplexer.
*/

`timescale 1ns/1ns
`include "mux16to1e3.v"

module exercise3_tb();

reg [0:15]W;
reg [3:0]S;
wire f;

mux16to1e3 test(W, S, f);
initial begin 
        $dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
        // Check for position
        W = 16'b0000000000100000; S = 4'b1010; #10; // Only the 10th bit is high
        W = 16'b1111111111101111; S = 4'b1011; #10; // Only the 11th bit is low
        
        // Check for alternate values
        W = 16'b0101010101010101; S = 4'b0010; #10; 
        W = 16'b0101010101010101; S = 4'b0011; #10;
        
        $display("Test Complete");
end 
endmodule
