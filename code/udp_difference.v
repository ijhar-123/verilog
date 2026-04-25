`timescale 1ns / 1ps

primitive udp_difference(diff,a,b,c);
input a,b,c;
output diff;
table
// a b c    diff
   0 0 0  : 0;
   0 0 1  : 1;
   0 1 0  : 1;
   0 1 1  : 0;
   1 0 0  : 1;
   1 0 1  : 0;
   1 1 0  : 0;
   1 1 1  : 1;

endtable
endprimitive