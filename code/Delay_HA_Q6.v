`timescale 1ns / 1ps

module Delay_HA_Q6(a,b,sum,c_out);
    output sum,c_out;
    input a,b;
    assign #3 sum=a^b;
    assign #6 c_out=a&b;

endmodule
