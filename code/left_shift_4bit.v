`timescale 1ns / 1ps

module left_shift_4bit(data_in,data_out);
input [3:0] data_in;
output [3:0] data_out;

assign data_out = data_in << 1;

endmodule
