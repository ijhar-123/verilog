`timescale 1ns / 1ps

module clock_generation;

    reg clk;
    task generate_clock;
        begin
            clk = 0; 
            forever begin
                #2 clk = ~clk; 
            end
        end
    endtask 
    initial 
    begin
        $monitor("At time %t, clk = %b", $time, clk);
        #100 $finish; 
    end

endmodule