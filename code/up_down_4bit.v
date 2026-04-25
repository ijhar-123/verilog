`timescale 1ns / 1ps

module up_down_4bit(
output reg [0:3]count,
input mode,clr,ld,clk,
input [0:3] d_in
    );
    
  always @(posedge clk)
  if (ld) count<=d_in;
  else if(clr) count<=4'b0000;
  else if(mode) count<=count+1;
  else count<=count-1;
    
endmodule
