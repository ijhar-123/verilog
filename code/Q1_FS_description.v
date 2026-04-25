`timescale 1ns / 1ps

module Q1_FS_description(diff,b_out,a,b,c);
input a,b,c;
output diff,b_out;

udp_difference DIFF (diff,a,b,c);
udp_borrow   BORROW (b_out,a,b,c);

endmodule

module tb_Q1_FS_description;
reg A,B,C;
wire Diff,B_out;

Q1_FS_description x1 (Diff,B_out,A,B,C);
initial $monitor("At time %0t: a=%b,b=%b,c=%b,diff=%b,b_out=%b",$time,A,B,C,Diff,B_out);

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