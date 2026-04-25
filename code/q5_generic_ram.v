`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 18:44:55
// Design Name: 
// Module Name: q5_generic_ram
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

module q5_generic_ram #(parameter N=8, M=8) (
    input clk,
    input we,
    input [$clog2(N)-1:0] addr,   // address width depends on N
    input [M-1:0] din,            // data width depends on M
    output reg [M-1:0] dout
);
    reg [M-1:0] mem [0:N-1];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        else
            dout <= mem[addr];
    end
endmodule
