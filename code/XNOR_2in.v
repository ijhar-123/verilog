`timescale 1ns / 1ps

module XNOR_2in(

output Y,
input A,B

    );
    
     wire t1,t2,t3,t4;
           
           supply1 pwr;
           supply0 gnd;
            
           pmos(t1,pwr,A);
           pmos(t2,pwr,~A);
           pmos(Y,t1,B);
           pmos(Y,t2,~B);
           
           nmos(Y,t3,A);
           nmos(t3,gnd,~B);
           nmos(Y,t4,~A);
           nmos(t4,gnd,B);
           
endmodule
