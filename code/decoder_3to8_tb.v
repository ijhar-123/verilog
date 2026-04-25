`timescale 1ns / 1ps

module decoder_3to8_tb;

reg A,B,C,E;
wire [7:0]Z;

decoder_3to8 uut (.a(A),.b(B),.c(C),.e(E),.y(Z));

initial
begin
$monitor ("Time=%0t | A=%b,B=%b,C=%b,E=%b,Z=%b,",$time,A,B,C,E,Z);
$display("simulation_start");


A=0;B=0;C=0;E=1;
#10 A=0;B=0;C=1;E=1;
#10 A=0;B=1;C=0;E=1;
#10 A=0;B=1;C=1;E=1;
#10 A=1;B=0;C=0;E=0;
#10 A=1;B=0;C=1;E=1;
#10 A=1;B=1;C=0;E=1;
#10 A=1;B=1;C=1;E=0;
#10 $display("simulation_end");
$finish;
end
endmodule
