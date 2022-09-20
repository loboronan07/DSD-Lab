`timescale 1ns/1ns
`include "mux16to1c.v"

module exercise3_tb();

reg [0:15]W;
reg [3:0]S;
wire f;

mux16to1c test(W, S, f);
initial begin 
        $dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
        W = 16'b0101010101010101; S = 4'b0000; #10;
        W = 16'b0101010101010101; S = 4'b0001; #10;
        W = 16'b0101010101010101; S = 4'b0010; #10;
        W = 16'b0101010101010101; S = 4'b0011; #10;
        
        $display("Test Complete");
end 
endmodule
