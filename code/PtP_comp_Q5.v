`timescale 1ns / 1ps

module PtP_comp_Q5(
output reg gt,lt,et,
input [3:0]a,b
    );
    
    specify
    
   (a,b*>gt,lt,et)=10;
    
    endspecify
       
    always @(*) begin
    
    gt=(a>b);
   
    lt= (b>a);
  
    et = (a==b); 
    
    end
endmodule
