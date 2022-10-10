/* Lab Exercise 4
	Design and write the Verilog code for a 4 bit binary to gray code converter using 4 to 1 multiplexers
and other necessary gates.
*/

`timescale 1ns/1ns
`include "exercise4.v"

module exercise4_tb();

reg [3:0]BIN;
wire [3:0]GRAY;

exercise4 test(BIN, GRAY);
initial begin
	$dumpfile("exercise4.vcd");
        $dumpvars(0, exercise4_tb);
        
        for(integer i=0; i<16; i++)
        begin
        	BIN = i; #10;
       	end
                
        $display("Test Complete");
end
endmodule


