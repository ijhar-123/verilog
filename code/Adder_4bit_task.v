`timescale 1ns / 1ps

module Adder_4bit_task(s,cout,a,b,cin);
input [3:0]a,b;
input cin;
output reg [3:0]s;
output reg cout;

always @(a or b or cin)
Adder_4bit (s,cout,a,b,cin);

task Adder_4bit;
output [3:0]s;
output cout;
input [3:0]a,b;
input cin;
begin:Adder_4bit
reg c0,c1,c2;

s[0]=a[0]^b[0]^cin;
c0=a[0]&b[0] | cin&(a[0]^b[0]);

s[1]=a[1]^b[1]^c0;
c1=a[1]&b[1] | c0&(a[1]^b[1]);

s[2]=a[2]^b[2]^c1;
c2=a[2]&b[2] | c1&(a[2]^b[2]);

s[3]=a[3]^b[3]^c2;
cout=a[3]&b[3] | c2&(a[3]^b[3]);

end
endtask
endmodule
