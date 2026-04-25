`timescale 1ns / 1ps

module Full_Subtractor(
    input a,
    input b,
    input c,
    input Diff,
    input Borrow
    );
    assign Diff=a^b^c;
    assign Borrow=~a&b | ~a&c | b&c;
endmodule
