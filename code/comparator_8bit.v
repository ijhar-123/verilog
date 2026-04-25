`timescale 1ns / 1ps

module comparator_8bit;
    function compare_8bit;
        input [7:0] a;
        input [7:0] b;
        begin
            if (a == b)
                compare_8bit = 1'b1;
            else
                compare_8bit = 1'b0;
        end
    endfunction
    reg [7:0] val1, val2;
    reg result;

    initial begin
        val1 = 8'hA5; val2 = 8'hA5;
        result = compare_8bit(val1, val2);
        $display("A: %h, B: %h | Equal: %b", val1, val2, result);

        val1 = 8'hFF; val2 = 8'h00;
        result = compare_8bit(val1, val2);
        $display("A: %h, B: %h | Equal: %b", val1, val2, result);
    end

endmodule
