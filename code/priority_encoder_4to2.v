module priority_encoder_4to2(input [3:0] i, output [1:0] y, output valid);
  assign y = i[3] ? 2'b11 :
             i[2] ? 2'b10 :
             i[1] ? 2'b01 : 2'b00;
  assign valid = |i; 
endmodule