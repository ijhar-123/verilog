`timescale 1ns / 1ps


module my_add_sub(

output [3:0]s,
output c_out,
input [3:0]a,b,
input mode
    );
   
   wire  [3:0]p;
   xor(p[0],b[0],mode);
    xor(p[1],b[1],mode);
     xor(p[2],b[2],mode);
      xor(p[3],b[3],mode);
   
    
rca1 A1( s[3:0],c_out,a[3:0],p[3:0],mode );
endmodule
