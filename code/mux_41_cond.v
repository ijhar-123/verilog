`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 13:09:59
// Design Name: 
// Module Name: mux_41_cond
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


module mux_41_cond(
output reg y,
input  a,b,c,d,
input [1:0]s

    );
   
    
   always @(*) begin
  case(s)
  2'b00:y=a;
   2'b01:y=b;
   2'b10:y=c;
   default:y=d;
   
   endcase
   end

endmodule
