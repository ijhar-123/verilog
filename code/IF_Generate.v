`timescale 1ns / 1ps

module IF_Generate(a,y);
parameter inv_enable=1;
input a;
output y;
generate 
        if (inv_enable)
        assign y=~a;
        else 
        assign y=a;
endgenerate
endmodule
