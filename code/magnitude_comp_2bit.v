`timescale 1ns / 1ps

module magnitude_comp_2bit(a1,a0,b1,b0,gt,et,lt);
input a1,a0;
input b1,b0;
output gt,et,lt;

assign gt = a1&(~b1) | a1&a0&(~b0) | a0&(~b1)&(~b0) ;
assign et = (~(a0^b0)) & (~(a1^b1));
assign lt = ~a1&b1 | ~a1&~a0&b0 | ~a0&b1&b0 ;


endmodule
