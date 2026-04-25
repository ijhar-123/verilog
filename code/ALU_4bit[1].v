
module ALU_4bit (
    input  [3:0] A,     
    input  [3:0] B,      
    input  [1:0] sel,    
    output [3:0] Y  );

    assign Y = (sel == 2'b00) ? (A + B) : // ADD
               (sel == 2'b01) ? (A - B) : // SUB
               (sel == 2'b10) ? (A & B) : // AND
               (sel == 2'b11) ? (A | B) : // OR
               4'b0000;                   // Default/Safety

endmodule
