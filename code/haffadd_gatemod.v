module halfadd_gatemod
(
output wire s,c,
input wire a,b
);
xor(s,a,b);
and(c,a,b);
endmodule