`timescale 1ns / 1ps

module FA_X(s,c_out,a,b,c_in);
input a,b,c_in;
output s,c_out;
assign s = a^b^c_in;
assign c_out = a&b | c_in&(a^b) ;
endmodule

module BCD_Adder (s,cout,x,y,cin);
input [3:0]x,y;
input cin;
output [3:0]s;
output cout;
wire [3:0]z;
wire t1,t2,t3,c0,c1,c2;

FA_X a0 (z[0],c0,x[0],y[0],cin);
FA_X a1 (z[1],c1,x[1],y[1],c0);
FA_X a2 (z[2],c2,x[2],y[2],c1);
FA_X a3 (z[3],t1,x[3],y[3],c2);

and a4 (t2,z[3],z[2]);
and a5 (t3,z[3],z[1]);
or (cout,t1,t2,t3);

wire t4,t5;
FA_X a6 (s[1],t4,z[1],cout,0);
FA_X a7 (s[2],t5,z[2],cout,t4);

xor (s[3],z[3],t5);

assign s[0]=z[0];
endmodule

module tb_BCD_Adder;
reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire cout;

BCD_Adder MMT (.s(sum),.cout(cout),.x(x),.y(y),.cin(cin));
initial 
begin
$monitor ("Time=%0t , x=%b,y=%b,cin=%b,sum=%b,cout=%b",$time, x,  y,cin, sum, cout);

$display("simulation_start");
x=4'b0100; y=4'b0011;cin=1'b0; #5;
x=4'b1000; y=4'b0101;cin=1'b1; #5;
x=4'b0101; y=4'b1010;cin=1'b0; #5;
x=4'b0101; y=4'b1011;cin=1'b1; #5;
$finish;
end
endmodule
