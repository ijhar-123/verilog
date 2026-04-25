`timescale 1ns / 1ps


module binary_to_gray
( input [3:0] bin,
  output reg [3:0] gray
    );
    
     initial begin
       
       // Default values to prevent latches
               gray=4'b0000;
       end
    
    always @ (*) begin
    if (bin[3] == 1'b1)
        gray[3] = 1'b1;
        else gray[3] = 1'b0;
        
     if (bin[3] == bin[2])
         gray[2] = 1'b0;
         else gray[2] = 1'b1;
         
     if (bin[2] == bin[1])
         gray[1] = 1'b0;
         else gray[1] =1'b1;
         
     if (bin[1] == bin[0])
         gray[0] = 1'b0;
         else gray[0] = 1'b1;       
       
    end
endmodule
