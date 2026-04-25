module mux_4to1(input [3:0] i, input [1:0] sel, output y);
  assign y = (sel == 2'b00) ? i[0] :
             (sel == 2'b01) ? i[1] :
             (sel == 2'b10) ? i[2] : i[3]; 
endmodule