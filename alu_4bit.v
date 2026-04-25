module alu_4bit(input [3:0] a, b, input [1:0] op, output [3:0] y);
  assign y = (op == 2'b00) ? (a + b) :
             (op == 2'b01) ? (a - b) :
             (op == 2'b10) ? (a & b) : (a | b);
endmodule