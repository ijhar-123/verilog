`timescale 1ns / 1ps

module Decoder_3_8(i,y);
input [2:0]i;
output [7:0]y;

assign y[0]=~i[0]&~i[1]&~i[2];
assign y[1]=i[0]&~i[1]&~i[2];
assign y[2]=~i[0]&i[1]&~i[2];
assign y[3]=i[0]&i[1]&~i[2];
assign y[4]=~i[0]&~i[1]&i[2];
assign y[5]=i[0]&~i[1]&i[2];
assign y[6]=~i[0]&i[1]&i[2];
assign y[7]=i[0]&i[1]&i[2];


endmodule
