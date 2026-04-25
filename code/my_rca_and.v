`timescale 1ns / 1ps

module my_rca_and
(

output [3:0]s,
output c_out,
input [3:0]b,c,
input mode

    );
   
   wire  [3:0]p;
   and(p[0],b[0],mode);
    and(p[1],b[1],mode);
     and(p[2],b[2],mode);
      and(p[3],b[3],mode);
   
    
rca1 A1( s[3:0],c_out,c[3:0],p[3:0],1'b0 );
endmodule
