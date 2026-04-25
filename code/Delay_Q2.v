`timescale 1ns / 1ps

module Delay_Q2(out, m, n, p, q);
//Lumped Delay Model
output out;
input m, n, p, q;
wire e, f ;
and al(e, m, n);
and a2(f, p, q);
and #15 a3 (out, e, f ); //delay only on the output gate
endmodule


