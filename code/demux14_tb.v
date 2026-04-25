`timescale 1ns / 1ps

module demux14_tb;
reg i;
reg s1,s0;
wire y0,y1,y2,y3;

demux14 D1 (.i(i),.s1(s1),.s0(s0),.y0(y0),.y1(y1),.y2(y2),.y3(y3));

initial begin
$display("simulation_start");
$monitor("Time=%0t | i=%b,s1=%b,s0=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,i,s1,s0,y0,y1,y2,y3);

    i=1;s1=0;s0=0;
#10 i=1;s1=0;s0=1;
#10 i=1;s1=1;s0=0;
#10 i=1;s1=1;s0=1;

#10 $display("simulation_end");
 $finish;

end
endmodule
