/* Additional Exercise 2
	Write behavioral Verilog code for a 3 to 8 decoder with active-high enable input and active low output
	using the if-else statement. Using 3 to 8 decoders and a 2 to 4 decoder, design a 5 to 32 decoder with
	active-high enable input and active low output and write the Verilog code for the same.
*/

`timescale 1ns/1ns
`include "dec5to32.v"

module additional2_tb();

reg [4:0]A;
reg En;
wire [0:31]D;
integer i;

dec5to32 test(A, En, D);
initial begin 
        $dumpfile("additional2.vcd");
        $dumpvars(0, additional2_tb);
        
        En = 0;
        for(i=0; i<32; i++)
        begin 
                A = i; #10;
        end
        
        En = 1;
        for(i=0; i<32; i++)
        begin 
                A = i; #10;
        end
        
        $display("Test Complete"); 
end
endmodule 
