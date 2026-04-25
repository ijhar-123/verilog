`timescale 1ns / 1ps

module PtP_DFF_Q4( output reg q,qbar,
input d,clk,rst
);

specify

(d => q)=5;
(d => qbar)=5;
(clk => q)=6;
(clk => qbar)=7;
(rst => q)=2;
(rst => qbar)=3;

endspecify

always @(negedge clk or posedge rst)
begin 
if (rst )
q <= 1'b0;
else
q = d;
end

endmodule
