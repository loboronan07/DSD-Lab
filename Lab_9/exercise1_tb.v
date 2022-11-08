`timescale 1ns/1ns
`include "fulladder.v"

module exercise1_tb();
reg x, y, z;
wire s, c;

fulladder test(x, y, z, s, c);
initial begin
        $dumpfile("exercise1.vcd");
        $dumpvars(0, exercise1_tb);
        
        x = 0; y = 0; z = 0; #10;
        x = 0; y = 0; z = 1; #10;
        x = 0; y = 1; z = 0; #10;
        x = 0; y = 1; z = 1; #10;
        x = 1; y = 0; z = 0; #10;
        x = 1; y = 0; z = 1; #10;
        x = 1; y = 1; z = 0; #10;
        x = 1; y = 1; z = 1; #10;
        
        $display("Test Complete");
end
endmodule
