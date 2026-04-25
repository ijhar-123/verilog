`timescale 1ns / 1ps

module mux_4_to_1_tb;

reg a,b,c,d,s1,s0;
wire y;

mux_4_to_1 M1 (.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.y(y));

initial 
begin
$display ("simulation_start");
$monitor ("Time=%0t | a=%b,b=%b,c=%b,d=%b,s1=%b,s0=%b => y=%b",$time,a,b,c,d,s1,s0,y);

    a=0;b=1;c=1;d=0;s1=0;s0=0;
#10 a=1;b=1;c=0;d=0;s1=0;s0=1;
#10 a=1;b=0;c=1;d=1;s1=1;s0=0;
#10 a=1;b=1;c=1;d=1;s1=1;s0=1;
#10 $display ("simulation_end");
 $finish;

end
endmodule
