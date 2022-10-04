`timescale 1ns/1ns
`include "exercise2a.v"

module exercise2a_tb();

reg a, b, c;
wire f;

exercise2a test(a, b, c, f);
initial begin
        $dumpfile("exercise2a.vcd");
        $dumpvars(0, exercise2a_tb);
        
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
