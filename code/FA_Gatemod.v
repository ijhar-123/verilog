module FA_gatemod(
input a,b,c_in,
output s,c_out
);
wire t1,t2,t3;
xor(t1,a,b),(s,t1,c_in);
and (t2,a,b),(t3,c_in,t1);
or (c_out,t2,t3);
endmodule
