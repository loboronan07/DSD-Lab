`timescale 1ns/1ns
`include "rippleadder.v"

module exercise3_tb();
reg [3:0]A;
reg [3:0]B;
wire [3:0]S;

rippleadder test(A, B, S);
initial begin
        $dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
        A = 4'b0010; B = 4'b1100; #10;
        A = 4'b0110; B = 4'b1001; #10;
        A = 4'b0011; B = 4'b1001; #10;
        A = 4'b0101; B = 4'b0101; #10;
        
        $display("Test Complete");
end
endmodule
