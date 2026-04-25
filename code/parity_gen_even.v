module parity_gen_even(input [3:0] d, output p);
  assign p = ^d; 
endmodule