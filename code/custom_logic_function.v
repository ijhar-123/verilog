`timescale 1ns / 1ps

primitive custom_logic_function(w,x,y,z);
output w;
input x,y,z;
table

// x y z : w
   0 0 0 : 1;
   0 0 1 : 0;
   0 1 0 : 0;
   0 1 1 : 0;
   1 0 0 : 0;
   1 0 1 : 0;
   1 1 0 : 1;
   1 1 1 : 1;
endtable
endprimitive

module tb_custom_logic_function;
wire D;
reg A,B,C;


custom_logic_function x1 (D,A,B,C);
initial $monitor("At time %0t: A=%b , B=%b , C=%b , D=%b",$time,A,B,C,D);

initial
begin

A=0;B=0;C=0; #5;
A=0;B=0;C=1; #5;
A=0;B=1;C=0; #5;
A=0;B=1;C=1; #5;
A=1;B=0;C=0; #5;
A=1;B=0;C=1; #5;
A=1;B=1;C=0; #5;
A=1;B=1;C=1; #5;

end
endmodule