`timescale 1ns / 1ps

module comparator_8bit_cond ( 
    output reg gt, et, lt,
    input [7:0] i, j
);
    initial begin
    
    // Default values to prevent latches
            gt = 1'b0;
            et = 1'b0;
            lt = 1'b0;
    end
    always @(*) begin
           
        if(i > j) begin
            gt = 1'b1;
            et = 1'b0;
            lt = 1'b0;
        end
        else if(i < j) begin
            lt = 1'b1;
            et = 1'b0;
            gt = 1'b0;
        end 
        else begin
            et = 1'b1;
            lt = 1'b0;
            gt = 1'b0;
        end
    end 
         
endmodule 