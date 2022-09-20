`timescale 1ns/1ns
`include "mux32to1.v"

module additional_tb();

reg [0:31]W;
reg [4:0]S;
wire f;

mux32to1 test(W, S, f);
initial begin 
        $dumpfile("additional1.vcd");
        $dumpvars(0, additional_tb);
        
        W = 32'b01010101010101010101010101010101; S = 5'b00000; #10;
        W = 32'b01010101010101010101010101010101; S = 5'b00001; #10;
        W = 32'b01010101010101010101010101010101; S = 5'b00010; #10;
        W = 32'b01010101010101010101010101010101; S = 5'b00011; #10;
        
        
        $display("Test Complete");
end 
endmodule
