`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 18:30:10
// Design Name: 
// Module Name: q4_ram_reset
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


module q4_ram_reset(input clk,we,reset,
input [2:0]addr,input [7:0]din,output reg  [7:0]dout);
reg [7:0]mem[7:0];
integer i;
always@(posedge clk,posedge reset)begin 
    if(reset)begin
        for(i=0;i<8;i=i+1)begin
            mem[i]=0;
        end
    end    
    else if(we)
        mem[addr]<=din;
    else
        dout<=mem[addr];
end
endmodule
