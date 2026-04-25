`timescale 1ns / 1ps

module priority_encoder_8to3_tb;
reg [7:0]D;
wire E,F,G,H;

priority_encoder_8to3 uut (.I(D),.A(E),.B(F),.C(G),.V(H));

initial
begin
$monitor ("Time=%0t | I=%b,E=%b,F=%b,G=%b,H=%b",$time,D,E,F,G,H);
$display ("simulation_start");

D=8'b00000000;
#10 D=8'b00000001;
#10 D=8'b00000010;
#10 D=8'b00000100;
#10 D=8'b00001000;
#10 D=8'b00010000;
#10 D=8'b00100000;
#10 D=8'b01000000;
#10 D=8'b10000000;
#10 D=8'b11111111;
#10 $display ("simulation_end");
$finish;
end
endmodule
