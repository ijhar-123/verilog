`timescale 1ns / 1ps


module FA_struct(
output sum,carry_out,
input a,b,c
    );
    
    supply0 gnd;
    supply1 vdd;
    
    wire [0:12]t;
    
    pmos(t[1],vdd,a);
    pmos(t[1],vdd,b);
    pmos(t[2],t[1],a);
    pmos(t[3],t[2],b);
    pmos(t[3],t[1],c);
    pmos(carry_out,vdd,t[3]);
    nmos(carry_out,gnd,t[3]);
    pmos(t[4],vdd,a); 
    pmos(t[4],vdd,b);
    pmos(t[4],vdd,c);
    pmos(t[5],t[4],a);
    pmos(t[6],t[5],b);
    pmos(t[7],t[6],c);
    pmos(t[7],t[4],t[3]);
     
    nmos(t[3],t[8],c);
    nmos(t[8],gnd,a);
    nmos(t[8],gnd,b);
    nmos(t[9],gnd,b);
    nmos(t[3],t[9],a);
    nmos(t[7],t[10],t[3]);
    nmos(t[10],gnd,a);
    nmos(t[10],gnd,b);
    nmos(t[10],gnd,c);
    nmos(t[11],gnd,c);
    nmos(t[12],t[11],b);
    nmos(t[7],t[12],a);
    
    pmos(sum,vdd,t[7]);
    nmos(sum,gnd,t[7]);
    
    endmodule
