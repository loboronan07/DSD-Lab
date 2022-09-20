`timescale 1ns/1ns
`include "exercise1i.v"

module exercise1i_tb;

reg a, b, c, d;
wire f;

exercise1i test(a, b, c, d, f);
initial begin
        $dumpfile("exercise1i.vcd");
        $dumpvars(0, exercise1i_tb);
        
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
