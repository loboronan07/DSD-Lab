module shiftregnb(In, Clk, Out);
parameter n = 4;
input In, Clk;
output reg [n-1:0]Out;
integer i;
always@(posedge Clk)
begin 
        for(i=0; i<n; i=i+1)
                Out[i] <= Out[i+1];
        Out[n-1] <= In;
end
endmodule

