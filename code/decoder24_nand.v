module decoder24_nand(
input en,a,b, 
output y0,y1,y2,y3
);
wire t1,t2,t3;

nand (t1,a,a);
nand (t2,b,b);
nand (t3,en,en);


nand (y0,t1,t2,en);
nand (y1,t2,a,en);
nand (y2,b,t1,en);
nand (y3,b,a,en);


endmodule