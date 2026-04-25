`timescale 1ns / 1ps

module comparator_4bit
(
output zero,negative,overflow,
input [3:0]x,[3:0]y,
input c0
);
wire [3:0]s;
wire [4:1]c;

assign c0=1'b1;
FA X1 (.a(x[0]),.b(~y[0]),.c_in(c0),.sum(s[0]),.carry(c[1]));
FA X2 (.a(x[1]),.b(~y[1]),.c_in(c[1]),.sum(s[1]),.carry(c[2]));
FA X3 (.a(x[2]),.b(~y[2]),.c_in(c[2]),.sum(s[2]),.carry(c[3]));
FA X4 (.a(x[3]),.b(~y[3]),.c_in(c[3]),.sum(s[3]),.carry(c[4]));

nor (zero,s[0],s[1],s[2],s[3]);
xor (overflow,c[3],c[4]);
assign negative=s[3];






endmodule
