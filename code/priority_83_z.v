`timescale 1ns / 1ps
module priority_83_z
( input [7:0]I,
  output reg [2:0]y,
  output reg valid
    );
    
    always @(*) begin
    valid = 1'b1;
    casez(I)
    8'b00000001 : y = 3'b000;
    8'b0000001z : y = 3'b001;
    8'b000001zz : y = 3'b010;
    8'b00001zzz : y = 3'b011;
    8'b0001zzzz : y = 3'b100;
    8'b001zzzzz : y = 3'b101;
    8'b01zzzzzz : y = 3'b110;
    8'b1zzzzzzz : y = 3'b111;
    
             /*   8'b1xxxxxxx : y = 3'b111; // Highest Priority (Bit 7)
                8'b01xxxxxx : y = 3'b110;
                8'b001xxxxx : y = 3'b101;
                8'b0001xxxx : y = 3'b100;
                8'b00001xxx : y = 3'b011;
                8'b000001xx : y = 3'b010;
                8'b0000001x : y = 3'b001;
               
                8'b00000001 : y = 3'b000; // Lowest Priority (Bit 0)
                */
    default: valid=1'b0;
    
    
    endcase
    end    
endmodule


