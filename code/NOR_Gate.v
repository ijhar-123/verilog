`timescale 1ns / 1ps


module NOR_Gate(
    input a,
    input b,
    output y
    );
    assign y=~(a|b);
endmodule
