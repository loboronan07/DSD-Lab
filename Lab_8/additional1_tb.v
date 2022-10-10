/* Additional Exercise 1
	Design and write the Verilog code for a BCD to 2421 code converter using 4 to 1 multiplexers and
other necessary gates.
*/

`timescale 1ns/1ns
`include "BCDtoTFTO.v"

module additional1_tb();

reg [3:0]BCD;
wire [3:0]TFTO;

BCDtoTFTO test(BCD, TFTO);
initial begin
	$dumpfile("additional1.vcd");
        $dumpvars(0, additional1_tb);
        
        for(integer i=0; i<10; i++)
        begin
        	BCD = i; #10;
       	end
                
        $display("Test Complete");
end
endmodule
