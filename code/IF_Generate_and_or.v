`timescale 1ns / 1ps

module IF_Generate_and_or(a,b,y);
parameter mode=0;
input [3:0]a,b;
output [3:0]y;

genvar i;
         generate
         for(i=0;i<4;i=i+1)
         
         begin: generate_if
         if (mode == 0)
         begin
         assign y[i] = a[i] & b[i]; 
         end
         
         else
         begin
         assign y[i] = a[i] | b[i];
         end
         end
         endgenerate
endmodule
