`timescale 1ns/1ns
`include "addexercise1.v"

module addexercise1_tb;

reg a, b, c;
wire f1, f2;

addexercise1 test(a, b, c, f1, f2);
initial begin 
        $dumpfile("addexercise1.vcd");
        $dumpvars(0, addexercise1_tb);
        
        a = 0; b = 0; c = 0; #10;
        
        a = 0; b = 0; c = 1; #10;
        
        a = 0; b = 1; c = 0; #10;
        
        a = 0; b = 1; c = 1; #10;
        
        a = 1; b = 0; c = 0; #10;
        
        a = 1; b = 0; c = 1; #10;
        
        a = 1; b = 1; c = 0; #10;
        
        a = 1; b = 1; c = 1; #10;
        
        $display("Test Complete");
end
endmodule
