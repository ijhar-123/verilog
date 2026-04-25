`timescale 1ns / 1ps

module Delay_Q4(a,b,out);
    output out;
    input a,b;
    assign #3 out=a&b;

endmodule
