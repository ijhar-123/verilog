`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 19:39:49
// Design Name: 
// Module Name: q8_bcd_to_7seg_rom
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
module q8_bcd_to_7seg_rom (
    input  [3:0] bcd,       // 4-bit BCD input (0–9)
    output reg [6:0] seg    // 7-bit segment output
);
    reg [6:0] rom [0:9];    // ROM for digits 0–9

    initial begin
        // Segment encoding: {a,b,c,d,e,f,g}
        rom[0] = 7'b1111110; // 0
        rom[1] = 7'b0110000; // 1
        rom[2] = 7'b1101101; // 2
        rom[3] = 7'b1111001; // 3
        rom[4] = 7'b0110011; // 4
        rom[5] = 7'b1011011; // 5
        rom[6] = 7'b1011111; // 6
        rom[7] = 7'b1110000; // 7
        rom[8] = 7'b1111111; // 8
        rom[9] = 7'b1111011; // 9
    end

    always @(*) begin
        if (bcd <= 4'd9)
            seg = rom[bcd];
        else
            seg = 7'b0000000; // blank for invalid BCD
    end
endmodule
