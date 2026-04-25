`timescale 1ns / 1ps

module Delay_Q5(a,b,c,d,out);
    output out;
    input a,b,c,d;
    wire t1,t2;
    or #3 a1 (t1,a,b);
    or #9 a2 (t2,c,t1);
    or #15 a3 (out,d,t2);
endmodule
