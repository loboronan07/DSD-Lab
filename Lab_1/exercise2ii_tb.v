`timescale 1ns/1ns
`include "exercise2ii.v"

module exercise2ii_tb;

reg a, b, c, d;
wire f, g;

exercise2ii test(a, b, c, d, f, g);
initial begin
        $dumpfile("exercise2ii.vcd");
        $dumpvars(0, exercise2ii_tb);
        
        a = 0; b = 0; c = 0; d = 0; #10;
        
        a = 0; b = 0; c = 0; d = 1; #10;
        
        a = 0; b = 0; c = 1; d = 0; #10;
        
        a = 0; b = 0; c = 1; d = 1; #10;
        
        a = 0; b = 1; c = 0; d = 0; #10;
       
        a = 0; b = 1; c = 0; d = 1; #10;
        
        a = 0; b = 1; c = 1; d = 0; #10;
        
        a = 0; b = 1; c = 1; d = 1; #10;
        
        a = 1; b = 0; c = 0; d = 0; #10;
        
        a = 1; b = 0; c = 0; d = 1; #10;
        
        a = 1; b = 0; c = 1; d = 0; #10;
        
        a = 1; b = 0; c = 1; d = 1; #10;
        
        a = 1; b = 1; c = 0; d = 0; #10;
        
        a = 1; b = 1; c = 0; d = 1; #10;
        
        a = 1; b = 1; c = 1; d = 0; #10;
        
        a = 1; b = 1; c = 1; d = 1; #10;
        
        $display("Test Complete");
end 
endmodule