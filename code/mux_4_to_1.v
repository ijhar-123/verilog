`timescale 1ns / 1ps

module mux_4_to_1(a,b,c,d,s0,s1,y);
input a,b,c,d;
input s1,s0;
output y;

assign y=~s1&~s0&a | ~s1&s0&b | s1&~s0&c | s1&s0&d ;

endmodule
