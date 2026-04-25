`timescale 1ns / 1ps

module decoder_3to8
(
  input a,b,c,e,
  output  [7:0]y
    );
    
    //decoder works only when e=enable=1 otherwise it will not work
    
    
    and k0 (y[0],e&(~a)&(~b)&(~c));
    and k1 (y[1],e&(~a)&(~b)&(c));
    and k2 (y[2],e&(~a)&(b)&(~c));
    and k3 (y[3],e&(~a)&(b)&(c));
    and k4 (y[4],e&(a)&(~b)&(~c));
    and k5 (y[5],e&(a)&(~b)&(c));
    and k6 (y[6],e&(a)&(b)&(~c));
    and k7 (y[7],e&(a)&(b)&(c));
    
endmodule
