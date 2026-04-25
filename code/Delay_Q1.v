`timescale 1ns / 1ps

module Delay_Q1(m,n,p,q,out);
input m,n,p,q;
output out;
wire e,f;

or #11 a1 (e,m,n);
and #8 a2 (f,p,q);
or #4 a3 (out,e,f);

endmodule
