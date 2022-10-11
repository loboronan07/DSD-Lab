/* Lab Exercise 2
        Write behavioral Verilog code for a 3 to 8 decoder with active-high enable input and active high output
using for loop. Using the 3 to 8 decoders above, design a 4 to 16 decoder and write the Verilog code
for the same.
*/

`timescale 1ns/1ns
`include "dec4to16e2.v"

module exercise2_tb();

reg [3:0]A;
reg En;
wire [0:15]D;
integer i;

dec4to16e2 test(A, En, D);
initial begin 
        $dumpfile("exercise2.vcd");
        $dumpvars(0, exercise2_tb);
        
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
