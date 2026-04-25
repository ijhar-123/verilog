`timescale 1ns / 1ps

module factorial_function;
 function automatic integer factorial;
        input integer n;
        begin
            if (n <= 1)
                factorial = 1;
            else
                factorial = n * factorial(n - 1);
        end
    endfunction

    integer result;
    
    initial begin
        result = factorial(5);
        $display("The factorial of 5 is: %d", result);
        
        result = factorial(7);
        $display("The factorial of 7 is: %d", result);
    end
endmodule
