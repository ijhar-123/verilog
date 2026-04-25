`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 17:39:24
// Design Name: 
// Module Name: Q10_para_rom
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


module Q10_para_rom#(
    parameter ADDR_WIDTH = 4,  
    parameter DATA_WIDTH = 8,  
    parameter INIT_FILE  = "rom_content.hex" 
)(
    input  wire [ADDR_WIDTH-1:0] addr,
    output reg  [DATA_WIDTH-1:0] data
);

    
    reg [DATA_WIDTH-1:0] rom [0:(1<<ADDR_WIDTH)-1];

    
    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, rom);  
            
        end
    end

    
    always @(*) begin
        data = rom[addr];
    end

endmodule
