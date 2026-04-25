module my_FA
(
output s,c_out,
input a,b,c_in
);

wire s1,c1,c2;

halfadd_gatemod ha1 (s1,c1,a,b);
halfadd_gatemod ha2 (s,c2,s1,c_in);

or (c_out,c1,c2);


endmodule