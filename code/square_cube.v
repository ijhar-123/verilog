`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 15:19:14
// Design Name: 
// Module Name: square_cube
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

`define square(a)(a*a)
`define cube(y)(y*y*y)

module square_cube;
    integer a=3,b=4;
    initial begin
        $display("square=%0d,cube=%0d ",`square(a),`cube(b));
    end
endmodule
