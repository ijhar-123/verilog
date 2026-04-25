`timescale 1ns / 1ps

module PtP_XOR_Q3(
output out,input in1,in2
 );
 
 //xor #(2,3) gl (out, in1, in2);
 specify 
 specparam t_rise=2,t_fall=3;
 (in1 => out) = (t_rise,t_fall);
 (in2 => out) = (t_rise,t_fall);
 endspecify
 xor(out,in1,in2);
 
 endmodule
