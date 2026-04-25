`timescale 1ns / 1ps

primitive udp_FA_carry(carry,a,b,c);
input a,b,c;
output carry;

table

// a b c    carry
   0 0 0  : 0;
   0 0 1  : 0;
   0 1 0  : 0;
   0 1 1  : 1;
   1 0 0  : 0;
   1 0 1  : 1;
   1 1 0  : 1;
   1 1 1  : 1;

endtable
endprimitive
