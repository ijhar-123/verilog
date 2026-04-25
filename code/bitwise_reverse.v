`timescale 1ns / 1ps

module bitwise_reverse;
    function [7:0] reverse_8bit;
        input [7:0] data_in;
        integer i;
        begin
            for (i = 0; i < 8; i = i + 1) begin
                reverse_8bit[7-i] = data_in[i];
            end
        end
    endfunction

    reg [7:0] original;
    reg [7:0] reversed;

    initial begin
        original = 8'b10110000; 
        reversed = reverse_8bit(original);
        
        $display("Original: %b (%h)", original, original);
        $display("Reversed: %b (%h)", reversed, reversed);
        
        original = 8'b11011010; 
        reversed = reverse_8bit(original);
        
        $display("Original: %b (%h)", original, original);
        $display("Reversed: %b (%h)", reversed, reversed);
    end
endmodule
