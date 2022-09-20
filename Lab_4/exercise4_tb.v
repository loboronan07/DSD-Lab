`timescale 1ns/1ns
`include "exercise4.v"

module exercise4_tb();

reg a, b, c, d;
wire f;

exercise4 test(f, a, b, c, d);
initial begin
        $dumpfile("exercise4.vcd");
        $dumpvars(0, exercise4_tb);
        
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
