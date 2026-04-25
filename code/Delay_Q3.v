`timescale 1ns / 1ps

module Delay_Q3( out , in);
    output out;
    input in;
    assign #5 out=~in;
endmodule
