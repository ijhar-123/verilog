`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 18:05:47
// Design Name: 
// Module Name: Q14_dp_ram_or_ow
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


module Q14_dp_ram_or_ow #(
    parameter ADDR_WIDTH = 4,   
    parameter DATA_WIDTH = 8    
)(
    
    input  wire                  clk_a,
    input  wire [ADDR_WIDTH-1:0] addr_a,
    input  wire [DATA_WIDTH-1:0] din_a,
    input  wire                  we_a,
  
    input  wire                  clk_b,
    input  wire [ADDR_WIDTH-1:0] addr_b,
    output reg  [DATA_WIDTH-1:0] dout_b
);
   
    reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

    
    always @(posedge clk_a) begin
        if (we_a) begin
            mem[addr_a] <= din_a;
        end
    end

    
    always @(posedge clk_b) begin
        dout_b <= mem[addr_b];
    end

endmodule

    
