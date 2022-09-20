`timescale 1ns/1ns
`include "mux4to1.v"

module exercise1_tb();

reg [0:3]W;
reg [1:0]S;
wire f;

mux4to1 test(W, S, f);
initial begin
        $dumpfile("exercise1.vcd");
        $dumpvars(0, exercise1_tb);
        
        W = 4'b0101; S = 2'b00; #10;
        W = 4'b0101; S = 2'b01; #10;
        W = 4'b0101; S = 2'b10; #10;
        W = 4'b0101; S = 2'b11; #10;
               
        $display("Test Complete");
end
endmodule
