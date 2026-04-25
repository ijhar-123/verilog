`timescale 1ns / 1ps

module nbit_xor(A,B,Y);
parameter N=8;
input [N-1:0]A,B;
output [N-1:0]Y;
genvar i;
        generate
        for(i=0;i<N;i=i+1)
        begin
        assign Y[i]=A[i]^B[i];
        end
        endgenerate
endmodule
