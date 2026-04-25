`timescale 1ns / 1ps



module bit4_multiplier_tb;

wire [7:0]out;
reg [3:0]a,b;

bit4_multiplier M1 (.p(out),.m(a),.q(b));
initial begin
$display("Simulation start");
$monitor("Time=%0t | In1=%b,IN2=%b,\n Output=%b",$time,a,b,out);

a=4'b1101;b=4'b1001;
#10 a=4'b1010;b=4'b1011;

#10 $display("Simulation end");
$finish;

 end
endmodule
