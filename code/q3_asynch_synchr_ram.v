module q3_asynch_synchr_ram(
    input clk,
    input we, re,
    input [2:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);
    reg [7:0] mem[7:0];

    // synchronous write
    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
    end

    // asynchronous read
    always @(*) begin
        if (re)
            dout = mem[addr];
        else
            dout = 8'bxxxxxxxx;
    end
endmodule
