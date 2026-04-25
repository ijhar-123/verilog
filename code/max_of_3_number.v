`timescale 1ns / 1ps

module max_of_3_number;
      function integer max_three;
        input integer a, b, c;
        begin
            if (a >= b && a >= c)
                max_three = a;
            else if (b >= a && b >= c)
                max_three = b;
            else
                max_three = c;
        end
    endfunction
    
    integer val1, val2, val3, result;
    initial begin
        val1 = 10; val2 = 45; val3 = 22;
        result = max_three(val1, val2, val3);      
        $display("Inputs: %0d, %0d, %0d | Max: %0d", val1, val2, val3, result);
    end

endmodule
