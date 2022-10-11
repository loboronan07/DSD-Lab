/* Additional Exercise 1
	Write behavioral Verilog code for a 2 to 4 decoder with active-high enable input and active high output
	using case statement. Using the 2 to 4 decoders above, design a 4 to 16 decoder with active-low enable
	input and active high output and write the Verilog code for the same.
*/

`timescale 1ns/1ns
`include "dec4to16a1.v"

module additional1_tb();

reg [3:0]A;
reg En;
wire [0:15]D;
integer i;

dec4to16a1 test(A, En, D);
initial begin 
        $dumpfile("additional1.vcd");
        $dumpvars(0, additional1_tb);
        
        En = 0;
        for(i=0; i<16; i++)
        begin 
                A = i; #10;
        end
        
        En = 1;
        for(i=0; i<16; i++)
        begin 
                A = i; #10;
        end
        
        $display("Test Complete"); 
end
endmodule 
