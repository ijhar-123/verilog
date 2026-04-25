`timescale 1ns / 1ps

module Dmux_1_4(i,s,y);
input i;
input [1:0]s;
output [3:0]y;

assign y[0]=~s[0]&~s[1]&i;
assign y[1]=s[0]&~s[1]&i;
assign y[2]=~s[0]&s[1]&i;
assign y[3]=s[0]&s[1]&i;


endmodule
