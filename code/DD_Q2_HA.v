`timescale 1ns / 1ps

module DD_Q2_HA(a,b,sum,c_out);
    output reg sum,c_out;
    input a,b;
    always @(*)
    begin
     #3 sum=  a^b;
     #3 c_out= a&b;
    end
endmodule