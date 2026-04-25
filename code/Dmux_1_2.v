`timescale 1ns / 1ps

module Dmux_1_2(i,s,y);
input i;
input s;
output [1:0]y;

assign y[0]=~s&i;
assign y[1]=s&i;

endmodule
