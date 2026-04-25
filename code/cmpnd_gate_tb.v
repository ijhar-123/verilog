`timescale 1ns / 1ps

module cmpnd_gate_tb;

reg a,b,c,d,e;
wire out;

cmpnd_gate G1 (out,a,b,c,d,e);

initial begin

    a=0 ; b=0 ; c=0 ; d=0 ; e=0;
 #5 a=0 ; b=1 ; c=1 ; d=0 ; e=0;
 #5 a=1 ; b=0 ; c=0 ; d=1 ; e=0;
 #5 a=1 ; b=1 ; c=1 ; d=1 ; e=1;
 end
 
 initial 
 $monitor ($time, " Out = %b, A = %b, B = %b, C = %b, D = %b, E = %b", out,a,b,c,d,e);


endmodule
