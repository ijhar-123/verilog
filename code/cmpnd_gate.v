`timescale 1ns / 1ps

module cmpnd_gate(
output Z,
input A,B,C,D,E
 );
 
  wire t1,t2,t3,t4;
           
    supply1 pwr;   
    supply0 gnd;
    
    pmos(t1,pwr,D);
    pmos(t2,t1,E);
    pmos(Z,t2,A);
    pmos(t3,pwr,C);
    pmos(Z,t3,B);
           
    nmos(Z,t4,B);
    nmos(Z,t4,C);
    nmos(t4,gnd,D);
    nmos(t4,gnd,E);
    nmos(t4,gnd,A);
    
endmodule
