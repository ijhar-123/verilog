`timescale 1ns / 1ps

primitive udp_encoder_8_to_3(a,i7,i6,i5,i4,i3,i2,i1,i0);
output a;
input i7,i6,i5,i4,i3,i2,i1,i0;
table
//input
//i7....i0  :a
  00000001	:0;
  00000010	:0;
  00000100	:0;
  00001000	:0;
  00010000	:1;
  00100000	:1;
  01000000	:1;
  10000000	:1;
endtable
endprimitive

primitive udp_encoder_8_to_3_1(b,i7,i6,i5,i4,i3,i2,i1,i0);
output b;
input i7,i6,i5,i4,i3,i2,i1,i0;
table
//input
//i7....i0  :b
  00000001	:0;
  00000010	:0;
  00000100	:1;
  00001000	:1;
  00010000	:0;
  00100000	:0;
  01000000	:1;
  10000000	:1;
endtable
endprimitive

primitive udp_encoder_8_to_3_2(c,i7,i6,i5,i4,i3,i2,i1,i0);
output c;
input i7,i6,i5,i4,i3,i2,i1,i0;
table
//input
//i7....i0  :c
  00000001	:0;
  00000010	:1;
  00000100	:0;
  00001000	:1;
  00010000	:0;
  00100000	:1;
  01000000	:0;
  10000000	:1;
endtable
endprimitive


module tb_udp_encoder_8_to_3;
wire A,B,C;
reg [7:0]i;

udp_encoder_8_to_3(A,i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0]);
udp_encoder_8_to_3_1(B,i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0]);
udp_encoder_8_to_3_2(C,i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0]);
initial $monitor("At time %0t: %b : %b %b %b ",$time,i,A,B,C);

initial
begin


i=8'b00000001; #5;
i=8'b00000010; #5;
i=8'b00000100; #5;
i=8'b00001000; #5;
i=8'b00010000; #5;
i=8'b00100000; #5;
i=8'b01000000; #5;
i=8'b10000000; #5;

end
endmodule