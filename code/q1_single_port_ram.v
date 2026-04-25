`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 16:16:12
// Design Name: 
// Module Name: q1_single_port_ram
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


module q1_single_port_ram(input clk,we,
input [2:0]addr,input [7:0]din,output reg  [7:0]dout);
reg [7:0]mem[7:0];
always@(posedge clk)begin
    if(we)
        mem[addr]<=din;
    else
        dout<=mem[addr];
end
endmodule
