/* Additional Exercise 2
        Write Verilog code for an N bit shift register.
*/

`timescale 1ns/1ns
`include "shiftregnb.v"

module additional2_tb();
parameter n = 4;
reg In, Clk;
wire [n-1:0]Out;

shiftregnb test(In, Clk, Out);
initial begin
        $dumpfile("additional2.vcd");
        $dumpvars(0, additional2_tb);
        
        Clk = 0;
        forever #20 Clk = ~Clk;
end
initial begin
        In = 0; #150;
        In = 1; #40;
        In = 0; #40;
        In = 1; #40;
        In = 0; #40;
        
        $display("Test Complete");
end
endmodule
