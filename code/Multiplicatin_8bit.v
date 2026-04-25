`timescale 1ns / 1ps

module Multiplicatin_8bit(a,b,out);
input [7:0]a,b;
output reg [15:0]out;

always @ (a or b)
multiply (a,b,out);
task multiply;
input [7:0]a,b;
output reg [15:0]out;

begin:mul
out=a*b;
end
endtask
endmodule
