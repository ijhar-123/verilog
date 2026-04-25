`timescale 1ns / 1ps

module magnitude_comp_4bit(a,b,gt,et,lt);
input [3:0]a;
input [3:0]b;
output reg gt;
output reg et;
output reg lt;

always @(a or b)
begin 
gt = 0 ; et = 0 ; lt = 0 ;

if(a>b)
   gt=1;
   
   else if (a<b)
   lt=1;
   
   else
   et=1;
   
end
endmodule
