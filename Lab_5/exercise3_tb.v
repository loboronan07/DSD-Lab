/* Lab Exercise 3
        Write behavioral Verilog code for a 2 to 4 decoder with active-high enable input and active low output
        using case statement. Using the 2 to 4 decoders above, design a 4 to 16 decoder with active-high
        enable input and active low output and write the Verilog code for the same.
*/

`timescale 1ns/1ns
`include "dec4to16e3.v"

module exercise3_tb();

reg [3:0]A;
reg En;
wire [0:15]D;
integer i;

dec4to16e3 test(A, En, D);
initial begin 
        $dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
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

