`timescale 1ns / 1ps

module Half_Subtractor(
    input a,
    input b,
    output Diff,
    output Bout
    );
    assign Diff=a^b;
    assign Bout=a&b;
endmodule
