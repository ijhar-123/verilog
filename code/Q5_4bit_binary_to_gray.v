`timescale 1ns / 1ps

primitive Q5_4bit_binary_to_gray(g3,b3,b2,b1,b0);

output g3;
input b3,b2,b1,b0;

table
// b3 b2 b1 b0  :  g3 
   0  0  0  0	:  0  ;
   0  0  0  1	:  0  ;
   0  0  1  0	:  0  ;
   0  0  1  1	:  0  ;
   0  1  0  0	:  0  ;
   0  1  0  1	:  0  ;
   0  1  1  0	:  0  ;
   0  1  1  1	:  0  ;
   1  0  0  0	:  1  ;
   1  0  0  1	:  1  ;
   1  0  1  0	:  1  ;
   1  0  1  1	:  1  ;
   1  1  0  0	:  1  ;
   1  1  0  1	:  1  ;
   1  1  1  0	:  1  ;
   1  1  1  1	:  1  ;
endtable
endprimitive

primitive Q5_4bit_binary_to_gray1(g2,b3,b2,b1,b0);

output g2;
input b3,b2,b1,b0;

table
// b3 b2 b1 b0  :    g2 
   0  0  0  0	:    0 ;
   0  0  0  1	:    0 ;
   0  0  1  0	:    0 ;
   0  0  1  1	:    0 ;
   0  1  0  0	:    1 ;
   0  1  0  1	:    1 ;
   0  1  1  0	:    1 ;
   0  1  1  1	:    1 ;
   1  0  0  0	:    1 ;
   1  0  0  1	:    1 ;
   1  0  1  0	:    1 ;
   1  0  1  1	:    1 ;
   1  1  0  0	:    0 ;
   1  1  0  1	:    0 ;
   1  1  1  0	:    0 ;
   1  1  1  1	:    0 ;
endtable
endprimitive

primitive Q5_4bit_binary_to_gray2 (g1,b3,b2,b1,b0);

output g1;
input b3,b2,b1,b0;

table
// b3 b2 b1 b0  :  g1
   0  0  0  0	:  0;
   0  0  0  1	:  0;
   0  0  1  0	:  1;
   0  0  1  1	:  1;
   0  1  0  0	:  1;
   0  1  0  1	:  1;
   0  1  1  0	:  0;
   0  1  1  1	:  0;
   1  0  0  0	:  0;
   1  0  0  1	:  0;
   1  0  1  0	:  1;
   1  0  1  1	:  1;
   1  1  0  0	:  1;
   1  1  0  1	:  1;
   1  1  1  0	:  0;
   1  1  1  1	:  0;
endtable
endprimitive

primitive Q5_4bit_binary_to_gray3(g0,b3,b2,b1,b0);

output g0;
input b3,b2,b1,b0;
table
// b3 b2 b1 b0  :   g0
   0  0  0  0	:   0;
   0  0  0  1	:   1;
   0  0  1  0	:   1;
   0  0  1  1	:   0;
   0  1  0  0	:   0;
   0  1  0  1	:   1;
   0  1  1  0	:   1;
   0  1  1  1	:   0;
   1  0  0  0	:   0;
   1  0  0  1	:   1;
   1  0  1  0	:   1;
   1  0  1  1	:   0;
   1  1  0  0	:   0;
   1  1  0  1	:   1;
   1  1  1  0	:   1;
   1  1  1  1	:   0;
endtable
endprimitive


module tb_Q5_4bit_binary_to_gray;
reg b3,b2,b1,b0;
wire g3,g2,g1,g0;

Q5_4bit_binary_to_gray x1 (g3,b3,b2,b1,b0);
Q5_4bit_binary_to_gray1 x2 (g2,b3,b2,b1,b0);
Q5_4bit_binary_to_gray2 x3 (g1,b3,b2,b1,b0);
Q5_4bit_binary_to_gray3 x4 (g0,b3,b2,b1,b0);

initial $monitor("At time %0t: %b %b %b %b : %b %b %b %b",$time,b3,b2,b1,b0,g3,g2,g1,g0);

initial
begin

b3=0;b2=0;b1=0;b0=0; #5;
b3=0;b2=0;b1=0;b0=1; #5;
b3=0;b2=0;b1=1;b0=0; #5;
b3=0;b2=0;b1=1;b0=1; #5;
b3=0;b2=1;b1=0;b0=0; #5;
b3=0;b2=1;b1=0;b0=1; #5;
b3=0;b2=1;b1=1;b0=0; #5;

end
endmodule