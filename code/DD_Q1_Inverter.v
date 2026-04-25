`timescale 1ns / 1ps

module DD_Q1_Inverter( out , in);
    output reg out;
    input in;
    always @(*) out= #3 (~in);
endmodule