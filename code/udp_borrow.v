`timescale 1ns / 1ps

primitive udp_borrow(borrow,a,b,c);
input a,b,c;
output borrow;

table

// a b c    borrow
   0 0 0  : 0;
   0 0 1  : 1;
   0 1 0  : 1;
   0 1 1  : 1;
   1 0 0  : 0;
   1 0 1  : 0;
   1 1 0  : 0;
   1 1 1  : 1;

endtable
endprimitive