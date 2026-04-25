`timescale 1ns / 1ps

module even_parity_generator_4bit(a,b,c,d,p);
input a,b,c,d;
output p;

assign p = a^b^c^d; // it generates even parity
//if there is odd numbers of 1's then even parity is 1,it detects odd nubers of 1's

endmodule
