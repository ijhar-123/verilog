`timescale 1ns / 1ps

module NAND_Gate(
    input a,
    input b,
    output y
    );
    
    assign y=~(a&b);
    
endmodule
