`timescale 1ns / 1ps

primitive udp_mux4_to_1(y,s0,s1,i0,i1,i2,i3);
output y;
input s0,s1,i0,i1,i2,i3;
table

// s0 s1 i0 i1 i2 i3    y
   0  0  0  ?  ?  ?  :  0;
   0  0  1  ?  ?  ?  :  1;
   1  0  ?  0  ?  ?  :  0;
   1  0  ?  1  ?  ?  :  1;
   0  1  ?  ?  0  ?  :  0;
   0  1  ?  ?  1  ?  :  1;
   1  1  ?  ?  ?  0  :  0;
   1  1  ?  ?  ?  1  :  1;

endtable
endprimitive
