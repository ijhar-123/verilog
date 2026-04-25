`timescale 1ns / 1ps

module majority_ckt_3bit(a,b,c,y);
input a,b,c;
output y;

assign y= a&b | b&c | a&c; 

endmodule
