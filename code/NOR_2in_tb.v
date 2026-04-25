`timescale 1ns / 1ps

module NOR_2in_tb;

reg a,b;
wire out;

NOR_2in G1 (out,a,b);

initial begin

    a=0 ; b=0 ;
 #5 a=0 ; b=1 ;
 #5 a=1 ; b=0 ;
 #5 a=1 ; b=1 ;
 end
 
 initial 
 $monitor ($time, " Out = %b, A = %b, B = %b", out,a,b);
 


endmodule
