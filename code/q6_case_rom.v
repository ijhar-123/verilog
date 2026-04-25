`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 18:56:01
// Design Name: 
// Module Name: q6_case_rom
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


module q6_case_rom(
input [1:0]addr,
output reg [7:0]dout);

always@(*)begin
    case(addr)
       2'b00:dout=8'hA1; 
       2'b01:dout=8'hB2; 
       2'b10:dout=8'hC3; 
       2'b11:dout=8'hD4; 
       default:dout=8'h00; 
    endcase
end
endmodule
