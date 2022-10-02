/* Lab Exercise 1
	Write behavioral Verilog code for a 2 to 1 multiplexer using the if-else statement. Use this to write
	the hierarchical code for a 4 to 1 multiplexer.
*/

`timescale 1ns/1ns
`include "mux4to1.v"

module exercise1_tb();

reg [0:3]W;
reg [1:0]S;
wire f;

mux4to1 test(W, S, f);
initial begin
        $dumpfile("exercise1.vcd");
        $dumpvars(0, exercise1_tb);
        
        // Check for position
        W = 4'b1000; S = 2'b00; #10; // Only the 0th bit is high
        W = 4'b1110; S = 2'b10; #11; // Only the 3rd bit is low
        
        // Check for alternate values
        W = 4'b0101; S = 2'b01; #10;
        W = 4'b0101; S = 2'b10; #10;
        
        $display("Test Complete");
end
endmodule
