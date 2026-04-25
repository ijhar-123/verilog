`timescale 1ns / 1ps

module PtP_NAND_Q2(
output out,input in1,in2
 );
 
//nand #(1:2:3,3:2:1) gl (out, in1, in2);
 specify 
 specparam t_rise=1:2:3,t_fall=3:2:1;
 (in1 => out) = (t_rise,t_fall);
 (in2 => out) = (t_rise,t_fall);
 endspecify
 nand(out,in1,in2);
 
endmodule
