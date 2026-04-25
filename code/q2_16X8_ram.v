`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 16:55:24
// Design Name: 
// Module Name: q2_16X8_ram
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


module q2_16X8_ram(input clk,we,re,
input [3:0]addr,input [7:0]din,output reg [7:0]dout);
reg [7:0]mem[15:0];

always@(posedge clk)begin
    if(we)begin
        mem[addr]=din;
    end
    else if(re)begin
        dout=mem[addr];
    end
    else 
        dout=8'bxxxxxxxx;
end
endmodule
