/* Additional Exercise 2
	Design and simulate a full adder using 2 to 1 multiplexers and other necessary gates.
*/

`timescale 1ns/1ns
`include "fulladder.v"

module additional2_tb();

reg a, b, Cin;
wire S, Cout;

fulladder test(Cin, a, b, S, Cout);
initial begin
        $dumpfile("additional2.vcd");
        $dumpvars(0, additional2_tb);
        
        Cin = 0; a = 0; b = 0; #10;
        Cin = 0; a = 0; b = 1; #10;
        Cin = 0; a = 1; b = 0; #10;
        Cin = 0; a = 1; b = 1; #10;
        Cin = 1; a = 0; b = 0; #10;
        Cin = 1; a = 0; b = 1; #10;
        Cin = 1; a = 1; b = 0; #10;
        Cin = 1; a = 1; b = 1; #10;
        
        $display("Test Complete");
end
endmodule
