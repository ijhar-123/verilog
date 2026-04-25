`timescale 1ns / 1ps

module Mupltiplication_4bit(A,B,Y);
input [3:0]A;
input [3:0]B;
output [7:0]Y;

assign Y=A*B;

endmodule
