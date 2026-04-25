`timescale 1ns / 1ps

module parameterized_adder(a,b,cin,sum,cout);
parameter N=8;
input [N-1:0]a,b;
input cin;
output [N-1:0]sum;
output cout;
wire [N-1:0] c;

genvar i;
generate
        for(i=0;i<N;i=i+1)
        begin: myfa
        if(i==00)
        full_adder fa1 (a[i],b[i],cin,sum[i],c[i]);
        else
        full_adder fa2 (a[i],b[i],c[i-1],sum[i],c[i]);
        end
endgenerate
        assign cout = c[N-1];
endmodule
