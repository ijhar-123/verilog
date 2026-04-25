`timescale 1ns / 1ps

module and_gate1_tb;

reg A,B;
wire Y;

and_gate1 A1(.a(A),.b(B),.y(Y));

initial 
begin
$display ("simulation_start");
$monitor ("Time=%0t | A=%b,B=%b => Y=%b",$time,A,B,Y);

   A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
#10;$display ("simulation_end");
$finish;
end



endmodule
