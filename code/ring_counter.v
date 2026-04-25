`timescale 1ns / 1ps

module ring_counter(clk,clr);
input clk,clr;
wire t1,t2,t3,t4;

D_FF X1 (t1,t4,clk,clr);
D_FF X2 (t2,t1,clk,clr);
D_FF X3 (t3,t2,clk,clr);
D_FF X4 (t4,t3,clk,clr);
endmodule

module tb_ring_counter;
reg clk,clr;

ring_counter J1 (.clk(clk),.clr(clr));

initial
$monitor("At time %0t: clk=%b,clr=%b",$time,clk,clr);
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

