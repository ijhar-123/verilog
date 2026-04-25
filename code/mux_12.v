`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 16:09:54
// Design Name: 
// Module Name: mux_12
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


module mux_12
(
 output y,
 input i0,i1,s
);
    wire t1,y1,y2;
    not (t1,s);
    
    and (y1,t1,i0);
    and (y2,s,i1);
    or (y,y1,y2);
   
endmodule
