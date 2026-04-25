`timescale 1ns / 1ps



module binarytogray_4bit(
output [3:0]gray,
input [3:0]binary
);

assign gray[3]=binary[3];
xor a1(gray[2],binary[2],binary[3]);
xor a2(gray[1],binary[2],binary[1]);
xor a3(gray[0],binary[1],binary[0]);

endmodule
