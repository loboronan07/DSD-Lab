/* Lab Exercise 1
        Write behavioral Verilog code for a 2 to 4 decoder with active-high enable input and active high output
        using the if-else statement. Using the 2 to 4 decoders above, design a 3 to 8 decoder and write the
        Verilog code for the same.
*/

`timescale 1ns/1ns
`include "dec3to8.v"

module exercise1_tb();

reg [2:0]A;
reg En;
wire [0:7]D;
integer i;

dec3to8 test(A, En, D);
initial begin 
        $dumpfile("exercise1.vcd");
        $dumpvars(0, exercise1_tb);
        
        En = 0;
        for(i=0; i<8; i++)
        begin 
                A = i; #10;
        end
        
        En = 1;
        for(i=0; i<8; i++)
        begin 
                A = i; #10;
        end
        
        
        $display("Test Complete");
end
endmodule
         


