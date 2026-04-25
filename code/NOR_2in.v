`timescale 1ns / 1ps

module NOR_2in(
output Y,
input A,B
  );
   
    wire t;
    
    supply1 pwr;
    supply0 gnd;
     
    pmos(Y,t,A);
    pmos(t,pwr,B);
    
    nmos(Y,gnd,A);
    nmos(Y,gnd,B);
    
    
    endmodule

