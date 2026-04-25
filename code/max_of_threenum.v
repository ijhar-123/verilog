`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 15:46:02
// Design Name: 
// Module Name: max_of_threenum
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

`define MAXI(a,b,c)(a>b?(a>c?a:c):(b>c?b:c))

module max_of_threenum();
integer a=7,b=5,c=10;
initial begin
    $display("%0d is the larest of three numbers %0d,%0d,%0d",`MAXI(a,b,c),a,b,c);
end
endmodule
