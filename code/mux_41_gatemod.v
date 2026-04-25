//using NAND Gate

module mux_41_gatemod(
input a,b,c,d, 
input s1,s0,
output y
);
wire t1,t2,y1,y2,y3,y4;
nand (t1,s0,s0);
nand (t2,s1,s1);
nand (y1,t1,t2,a);
nand (y2,t2,s0,b);
nand (y3,s1,t1,c);
nand (y4,s1,s0,d);
nand (y,y1,y2,y3,y4);

endmodule