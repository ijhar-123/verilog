module subtractor_4bit(input [3:0] a, b, output [3:0] diff, output bout);
  assign {bout, diff} = a - b; 
endmodule