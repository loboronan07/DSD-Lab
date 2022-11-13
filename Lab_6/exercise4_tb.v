/* Lab Exercise 3
	Design and implement an 8 to 1 multiplexer using 3 to 8 decoder and external gates.
*/

`timescale 1ns/1ns
`include "mux8to1.v"

module exercise4_tb();

reg [0:7]W;
reg [2:0]S;
wire f;

mux8to1 test(W, S, f);
initial begin 
        $dumpfile("exercise4.vcd");
        $dumpvars(0, exercise4_tb);
        
        // Check for position
        W = 8'b00000100; S = 3'b101; #10; // Only the 5th bit is high
        W = 8'b11101111; S = 3'b011; #10; // Only the 3rd bit is low
        
        // Check for alternate values
        W = 8'b01010101; S = 4'b100; #10; 
        W = 8'b01010101; S = 4'b101; #10;
        
        $display("Test Complete");
end 
endmodule
