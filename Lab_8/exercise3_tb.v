/* Lab Exercise 3
	Design and write the Verilog code for a BCD to Excess 3 code converter using 8 to 1 multiplexers
and other necessary gates.
*/

`timescale 1ns/1ns
`include "BCDtoXS3.v"

module exercise3_tb();

reg [3:0]BCD;
wire [3:0]XS3;

BCDtoXS3 test(BCD, XS3);
initial begin
	$dumpfile("exercise3.vcd");
        $dumpvars(0, exercise3_tb);
        
        for(integer i=0; i<10; i++)
        begin
        	BCD = i; #10;
       	end
                
        $display("Test Complete");
end
endmodule
