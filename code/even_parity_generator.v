`timescale 1ns / 1ps

primitive even_parity_generator(P,A,B,C,D);
output P;//parity(even parity detect odd numbers of one)
input A,B,C,D;

table
 
//A	B	C	D :	P
0	0	0	0 :	0;
0	0	0	1 :	1;
0	0	1	0 :	1;
0	0	1	1 :	0;
0	1	0	0 :	1;
0	1	0	1 :	0;
0	1	1	0 :	0;
0	1	1	1 :	1;
1	0	0	0 :	1;
1	0	0	1 :	0;
1	0	1	0 :	0;
1	0	1	1 :	1;
1	1	0	0 :	0;
1	1	0	1 :	1;
1	1	1	0 :	1;
1	1	1	1 :	0;

endtable
endprimitive


module tb_even_parity_generator;
reg A,B,C,D;
wire P;

even_parity_generator UUT (P,A,B,C,D);
initial $monitor("At time %0t: A=%b , B=%b , C=%b , D=%b : %b",$time,A,B,C,D,P);

initial
begin

A=0;B=0;C=0;D=0; #5;
A=0;B=0;C=0;D=1; #5;
A=0;B=0;C=1;D=0; #5;
A=0;B=0;C=1;D=1; #5;
A=0;B=1;C=0;D=0; #5;
A=0;B=1;C=0;D=1; #5;

end
endmodule
