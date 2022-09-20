`timescale 1ns/1ns
`include "exercise2_3.v"

module exercise2_3_tb;

reg x1, x2, x3;
wire f, g, h;

exercise2_3 test(f, g, h, x1, x2, x3);
initial begin 
        $dumpfile("exercise2_3.vcd");
        $dumpvars(0, exercise2_3_tb);
        
        x1 = 0; x2 = 0; x3 = 0; #10;
        x1 = 0; x2 = 0; x3 = 1; #10;
        x1 = 0; x2 = 1; x3 = 0; #10;
        x1 = 0; x2 = 1; x3 = 1; #10;
        x1 = 1; x2 = 0; x3 = 0; #10;
        x1 = 1; x2 = 0; x3 = 1; #10;
        x1 = 1; x2 = 1; x3 = 0; #10;
        x1 = 1; x2 = 1; x3 = 1; #10;
        
        $display("Test Complete");
end 
endmodule
