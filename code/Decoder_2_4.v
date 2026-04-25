`timescale 1ns / 1ps

module Decoder_2_4(i,y);
input [1:0]i;
output [3:0]y;

assign y[0]=~i[0]&~i[1];
assign y[1]=i[0]&~i[1];
assign y[2]=~i[0]&i[1];
assign y[3]=i[0]&i[1];
endmodule
