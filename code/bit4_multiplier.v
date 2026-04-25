


module FA
(
input a,b,c_in,
output sum,carry
);

assign sum = a^b^c_in;
assign carry = a&b | c_in&(a^b) ;

endmodule

module bit4_multiplier 
(
input [3:0]m,
input [3:0]q,
output [7:0]p
);


wire [10:0]c;

//initial block
wire [2:0]w;
and A1 (p[0],q[0],m[0]);
and A2 (w[0],q[0],m[1]);
and A3 (w[1],q[0],m[2]);
and A4 (w[2],q[0],m[3]);

//block first
wire [3:0]D;
wire [3:1]E;

and A5 (D[0],q[1],m[0]);
and A6 (D[1],q[1],m[1]);
and A7 (D[2],q[1],m[2]);
and A8 (D[3],q[1],m[3]);

FA X1 (.a(w[0]),.b(D[0]),.c_in(1'b0),.sum(p[1]),.carry(c[0]));
FA X2 (.a(w[1]),.b(D[1]),.c_in(c[0]),.sum(E[1]),.carry(c[1]));
FA X3 (.a(w[2]),.b(D[2]),.c_in(c[1]),.sum(E[2]),.carry(c[2]));
FA X4 (.a(D[3]),.b(1'b0),.c_in(c[2]),.sum(E[3]),.carry(c[3]));

//block second
wire [4:1]F;
wire [3:1]G;

and A9 (F[1],q[2],m[0]);
and A10 (F[2],q[2],m[1]);
and A11 (F[3],q[2],m[2]);
and A12 (F[4],q[2],m[3]);

FA X5 (.a(E[1]),.b(F[1]),.c_in(1'b0),.sum(p[2]),.carry(c[4]));
FA X6 (.a(E[2]),.b(F[2]),.c_in(c[4]),.sum(G[1]),.carry(c[5]));
FA X7 (.a(E[3]),.b(F[3]),.c_in(c[5]),.sum(G[2]),.carry(c[6]));
FA X8 (.a(c[3]),.b(F[4]),.c_in(c[6]),.sum(G[3]),.carry(c[7]));


//block third

wire [4:1]H;

and A13 (H[1],q[3],m[0]);
and A14 (H[2],q[3],m[1]);
and A15 (H[3],q[3],m[2]);
and A16 (H[4],q[3],m[3]);

FA X9 (.a(G[1]),.b(H[1]),.c_in(1'b0),.sum(p[3]),.carry(c[8]));
FA X10 (.a(G[2]),.b(H[2]),.c_in(c[8]),.sum(p[4]),.carry(c[9]));
FA X11 (.a(G[3]),.b(H[3]),.c_in(c[9]),.sum(p[5]),.carry(c[10]));
FA X12 (.a(H[4]),.b(c[7]),.c_in(c[10]),.sum(p[6]),.carry(p[7]));

endmodule