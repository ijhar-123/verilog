`timescale 1ns / 1ps

module parity_bit (
    input  [7:0] data_in,
    output reg   even_bit,
    output reg   odd_bit
);
    compute_parity(data_in, even_bit, odd_bit);
    task compute_parity;
        input  [7:0] data;
        output ev;
        output od;
        begin           
            ev = ^data;      
            od = ~ev;        
        end
    endtask
endmodule