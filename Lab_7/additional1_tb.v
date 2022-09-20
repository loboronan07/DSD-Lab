/* Additional Exercise 1 
	Write behavioral Verilog code for an 8 to 1 multiplexer using an if-else statement. Use this to write
	the hierarchical code for a 32 to 1 multiplexer. 
*/

`timescale 1ns/1ns
`include "mux32to1.v"

module additional_tb();

reg [0:31]W;
reg [4:0]S;
wire f;

mux32to1 test(W, S, f);
initial begin 
        $dumpfile("additional1.vcd");
        $dumpvars(0, additional_tb);
        // Check for position
        W = 32'b00000000000100000000000000000000; S = 5'b01011; #10; // Only the 11th bit is high
        W = 32'b11111111111111111111111111101111; S = 5'b11011; #10; // Only the 27th bit is low
        
        // Check for alternate values
        W = 32'b01010101010101010101010101010101; S = 5'b10101; #10; 
        W = 32'b01010101010101010101010101010101; S = 5'b10110; #10;
        
        $display("Test Complete");
end 
endmodule
