`timescale 1ns / 1ps

module Delay_mux_Q7(a,b,s,out);
    output out;
    input a,b,s;
    assign #3 out=(~s)&a | s&b ;

endmodule
