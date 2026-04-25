`timescale 1ns / 1ps
module logic_selection(a,b,y);
input a,b;
output y;
parameter mode=2;
generate 
        case(mode)
        0:assign y=a&b;
        1:assign y=a|b;
        2:assign y=a^b;
        default:assign y=0;
        endcase
endgenerate        
endmodule
