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
        
        Cin = 0;
        for(integer i=0; i<10; i=i+1)
	begin
		A = i;
		for(integer j=0; j<10; j=j+1)
		begin
			B = j;
			#10;
		end
	end
        
        $display("Test Complete");
end
endmodule
