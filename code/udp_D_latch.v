`timescale 1ns / 1ps

primitive udp_D_latch(q,d,clk,clr);
input d,clk,clr;
output reg q;

table

//             ps  ns(output)
// d clk clr : q- : q
   ?  ?   1  : ?  : 0;//cleared
   0  1   0  : ?  : 0;//reset
   1  1   0  : ?  : 1;//set
   ?  0   0  : ?  : -;//hold previuous valu  
   
endtable
endprimitive


module tb_udp_D_latch;
reg d,clk,clr;
wire out;

udp_D_latch UUT (out,d,clk,clr);
initial $monitor("At time %0t: clk=%b,d=%b,clr=%b,out=%b",$time,clk,d,clr,out);

initial
begin
clr = 1; #5;
clr = 0; #5;
clk = 0; d = 1; #5;
clk = 1; d = 0; #5;
clk = 0;
clk = 1; d = 1; #5;
clk = 0;
end
endmodule
