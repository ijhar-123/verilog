`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 17:29:41
// Design Name: 
// Module Name: Q9_rom_initial
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


module Q9_rom_initial#(
    parameter ADDR_WIDTH = 4,  
    parameter DATA_WIDTH = 8   
)(
    input  wire [ADDR_WIDTH-1:0] addr,
    output reg  [DATA_WIDTH-1:0] data
);

   
    reg [DATA_WIDTH-1:0] rom [0:(1<<ADDR_WIDTH)-1];

   
    initial begin
         
        $readmemh("rom_data.hex", rom);  
   
    end

 
    always @(*) begin
        data = rom[addr];
    end

endmodule
