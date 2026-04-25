`timescale 1ns / 1ps

module mux_21_cond(
output reg y,
input  a,b,s

    );
   
    
   always @(*) begin
   if(s)
   y=a;
   else 
   y=b;
   
   end
    
endmodule
