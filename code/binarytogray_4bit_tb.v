`timescale 1ns / 1ps

module binarytogray_4bit_tb;

reg [3:0]X;
wire [3:0]W;

binarytogray_4bit A1(.gray(W),.binary(X));

initial begin 

$monitor("Time=%0t | X=%b,W=%b",$time,W,X);

    X=4'b1011;
#10 X=4'b1000;
#10 X=4'b1010;
#10 $finish;
end
endmodule
