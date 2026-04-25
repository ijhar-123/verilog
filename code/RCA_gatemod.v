module RCA_gatemod
(
input wire [3:0]a,b,
input c_in,
output wire [3:0]s,
output c_out
);
wire c0,c1,c2;
wire t[11:0];
xor(s[0],a[0],b[0],c_in);
and (t[0],a[0],b[0]),(t[1],b[0],c_in),(t[2],a[0],c_in);
or (c0,t[0],t[1],t[2]);

xor(s[1],a[1],b[1],c0);
and (t[3],a[1],b[1]),(t[4],b[1],c0),(t[5],a[1],c0);
or (c1,t[3],t[4],t[5]);

xor(s[2],a[2],b[2],c1);
and (t[6],a[2],b[2]),(t[7],b[2],c1),(t[8],a[2],c1);
or (c2,t[6],t[7],t[8]);

xor(s[3],a[3],b[3],c2);
and (t[9],a[3],b[3]),(t[10],b[3],c2),(t[11],a[3],c2);
or (c_out,t[9],t[10],t[11]);

endmodule