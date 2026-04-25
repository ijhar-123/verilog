`timescale 1ns / 1ps

module arithmatic_op_selector(a,b,y);
input [7:0]a,b;
output reg [15:0]y;
parameter op=0;

        always @(*) begin
        case(op)
             0:  y=a + b;
             1:  y=a - b;
             2:  y=a * b;
       default: y = 0;
        endcase
        end

endmodule
