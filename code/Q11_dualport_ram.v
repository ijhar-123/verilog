`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 17:46:18
// Design Name: 
// Module Name: Q11_dualport_ram
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


module Q11_dualport_ram #(
    parameter ADDR_WIDTH = 4,   
    parameter DATA_WIDTH = 8   
)(

    input  wire [ADDR_WIDTH-1:0] addr_a,
    input  wire [DATA_WIDTH-1:0] din_a,
    output reg  [DATA_WIDTH-1:0] dout_a,
    input  wire we_a,

    input  wire [ADDR_WIDTH-1:0] addr_b,
    input  wire [DATA_WIDTH-1:0] din_b,
    output reg  [DATA_WIDTH-1:0] dout_b,
    input  wire we_b,
    
    
    input  wire clk
);

    reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];


    always @(posedge clk) begin
        if (we_a) begin
            mem[addr_a] <= din_a;   
        end
        dout_a <= mem[addr_a];   
    end

 
  always @(posedge clk) begin
        if (we_b) begin
            mem[addr_b] <= din_b;   
        end
        dout_b <= mem[addr_b];    
    end

endmodule