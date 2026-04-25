`timescale 1ns / 1ps


module priority_encoder_4_2(x,y,v);
input [3:0]x;
output [1:0]y;
output v;//valid bit indicator

assign y[0] = x[3] | (~x[3] & y[1]) ;
assign y[1] = x[3] | x[2] ;
assign v = x[0] | x[1] | x[2] | x[3] ; //valid bit output

endmodule
