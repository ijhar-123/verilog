`timescale 1ns / 1ps

module even_parity(a,parity);
parameter N=8;
input [N-1:0] a;
output parity;
wire [N-1:0] t;
assign t[0]=a[0];

genvar i;
generate
        for(i=0;i<N;i=i+1)
        begin
        assign t[i] = t[i-1]^a[i];
        end
endgenerate
assign parity = t[N-1];        
endmodule
