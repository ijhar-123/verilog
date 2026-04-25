`timescale 1ns / 1ps

module priority_encoder_8to3
(
input [7:0]I,
output A,B,C,V
    );
    
    or X1 (A,I[4],I[5],I[6],I[7]);
    or X2 (B,I[2],I[3],I[6],I[7]);
    or X3 (C,I[1],I[3],I[5],I[7]);
    or X4 (V,I[0],I[1],I[2],I[3],I[4],I[5],I[6],I[7]);
endmodule
