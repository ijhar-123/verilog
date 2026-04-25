`timescale 1ns / 1ps

module parity(
    output reg y, input [7:0]a
    );
   reg  temp,i;
   initial begin 
      temp=1'b0; 
      i=1'b0;
   end
    always @(*)
    begin 
        for(i=0;i<=7;i=i+1)
         begin
             temp=temp^a[i];
        
        end
           y=temp;
    end
    
endmodule
