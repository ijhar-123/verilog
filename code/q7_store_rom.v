`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 19:18:13
// Design Name: 
// Module Name: q7_store_rom
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


module q7_store_rom(
input [2:0]addr,
output reg [7:0]dout);

reg [7:0]rom[7:0];
integer i;
initial begin
    for(i=0;i<8;i=i+1)begin
        rom[i]=8'hA+i;
    end
    
end

always@(*)begin
    dout=rom[addr];
end
endmodule
