`timescale 1ns / 1ps

module odd_parity_generator_4bit(a,b,c,d,p);
input a,b,c,d;
output p;

assign p = ~(a^b^c^d); // it generates odd parity
//if there is even numbers of 0's then odd parity is 1,it detects even nubers of 0's

endmodule
