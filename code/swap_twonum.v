`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 15:55:25
// Design Name: 
// Module Name: swap_twonum
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
`define swap(a,b)\
a=a+b;\
b=a-b;\
a=a-b;

module swap_twonum;
integer a=10,b=20;
initial begin
    $display("%0d ,%0d are initial values",a,b);
    `swap(a,b)
    $display("%0d ,%0d are changed values",a,b);
end
endmodule
