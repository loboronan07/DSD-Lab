`timescale 1ns/1ns
`include "addsub4b.v"

module exercise2_tb();
reg [3:0]A;
reg [3:0]B;
reg s;
wire [3:0]S;
wire neg;

addsub4b test(A, B, s, S, neg);
initial begin
        $dumpfile("exercise2.vcd");
        $dumpvars(0, exercise2_tb);
        
        A = 4'b1001; B = 4'b0101; s = 1'b0; #10;
        A = 4'b1001; B = 4'b0101; s = 1'b1; #10;
        A = 4'b0101; B = 4'b1001; s = 1'b0; #10;
        A = 4'b0101; B = 4'b1001; s = 1'b1; #10;
        
        $display("Test Complete");
end
endmodule
