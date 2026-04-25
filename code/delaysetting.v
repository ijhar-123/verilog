`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 16:08:51
// Design Name: 
// Module Name: delaysetting
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
`define delay #10

module delaysetting();
integer a=20;
initial begin
`delay;
$display("time =%0t, a=%0d",$time,a);
end
endmodule
