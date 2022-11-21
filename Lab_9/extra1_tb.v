/* Extra Question 1
	Write behavioral Verilog code to implement the following and simulate
		4-bit Ripple Adder
*/

`timescale 1ns/1ns
`include "rippleadder.v"

module extra1_tb();
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]S;
wire Cout;

rippleadder test(A, B, Cin, S, Cout);
initial begin
        $dumpfile("extra1.vcd");
        $dumpvars(0, extra1_tb);
        
        Cin = 0; A = 4'b1011; B = 4'b0100; #10;
        Cin = 1; A = 4'b1011; B = 4'b0100; #10;
        Cin = 0; A = 4'b0101; B = 4'b1000; #10;
        Cin = 0; A = 4'b1011; B = 4'b1101; #10;
        
        $display("Test Complete");
end
endmodule
