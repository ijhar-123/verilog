`timescale 1ns / 1ps

module Nand_2in(output Y,
input A,B
);

wire t;

supply1 pwr;
supply0 gnd;
 
pmos(Y,pwr,A);
pmos(Y,pwr,B);

nmos(Y,t,A);
nmos(t,gnd,B);


endmodule
