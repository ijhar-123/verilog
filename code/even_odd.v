`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 15:31:06
// Design Name: 
// Module Name: even_odd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define even_odd(x) \
    if (x % 2 == 0) \
        $display("%0d is even", x); \
    else \
        $display("%0d is odd", x);

module even_odd;
    integer a = 4, b = 7;
    initial begin
        `even_odd(a)
        `even_odd(b)
    end
endmodule
