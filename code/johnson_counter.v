`timescale 1ns / 1ps



primitive D_FF(q_next,d,clk,clr);
input d,clk,clr;
output reg q_next;
initial q_next=0;
/*
table
//             ps  ns(output)
// d clk clr : q : q_next
   0 (01) 0  : ? : 0;
   1 (01) 0  : ? : 1;
   1 (0x) 0  : 1 : 1;
   0 (0x) 0  : 0 : 0;
   ? (?0) 0  : ? : -;
   ? (??) 1  : ? : 0;
   ?   ?  1  : ? : 0;
   ?   ? (10): ? : -;
  (??) ?  0  : ? : -;
       
   
endtable
*/
table
// d clk clr : q : q_next
   ? ? 0    : ? : 0;
   ? ? (01) : ? : -;
   
   0 (01) 1 : ? : 0;
   1 (01) 1 : ? : 1;
   
   0 (0x) 1 : 0 : 0;
   1 (0x) 1 : 1 : 1;
   ? (10) 1 : ? : -;
   ? (x0) 1 : ? : -;
   
   (??) ? 1 : ? : -;
endtable

endprimitive

module johnason_counter(clk,clr,y1,y2,y3,y4);
input clk,clr;
output y1,y2,y3,y4;
D_FF X1 (y1,~y4,clk,clr);
D_FF X2 (y2,y1,clk,clr);
D_FF X3 (y3,y2,clk,clr);
D_FF X4 (y4,y3,clk,clr);
endmodule

module tb_johnason_counter;
reg clk,clr;
wire y1,y2,y3,y4;

johnason_counter J1 (.clk(clk),.clr(clr),.y1(y1),.y2(y2),.y3(y3),.y4(y4));




initial
$monitor("At time %0t: clk=%b,clr=%b,y4=%b,y3=%b,y2=%b,y1=%b",$time,clk,clr,y4,y3,y2,y1);
initial
begin
clk = 1'b0;
forever
 #10 clk=~clk;
 end
 initial
 begin
 #0 clr = 1'b1;
 #5 clr = 1'b0;
 #200 $stop;
 end
 endmodule

