`timescale 1ns / 1ps

module parking_fsm( output reg gate, input [1:0] coin ,input clk,rst
);

parameter s0=3'b000,
          s5=3'b001,
          s10=3'b010,
          s15=3'b011,
          s20=3'b100;
          
          reg [2:0] curr_state,next_state;
          
 always @(posedge clk or posedge rst)
 begin
 if(rst) curr_state = 2'b00;
 else    curr_state = next_state;
 end
 
 always @(*) begin
 
 case(curr_state)
  s0: begin
  if( coin == 2'b01) next_state = s5;
  else if( coin == 2'b10) next_state = s10;
  else if( coin ==  2'b11) next_state = s20;
  else next_state = s0;
  end
  
   s5: begin
  if( coin ==  2'b01) next_state = s10;
  else if( coin ==  2'b10) next_state = s15;
  else if( coin ==  2'b11) next_state = s20;
  else next_state = s5;
  end
  
   s10: begin
  if( coin ==  2'b01) next_state = s15;
  else if( coin ==  2'b10) next_state = s20;
  else if( coin ==  2'b11) next_state = s20;
  else next_state = s10;
  end
  
    s15: begin
  if( coin ==  2'b01) next_state = s20;
  else if( coin ==  2'b10) next_state = s20;
  else if( coin ==  2'b11) next_state = s20;
  else next_state = s15;
  end
 
  s20: begin
  if( coin ==  2'b01) next_state = s20;
  else if( coin ==  2'b10) next_state = s20;
  else if( coin ==  2'b11) next_state = s20;
  else next_state = s0;
  end
  
  default : next_state =s0;
  
 endcase
 end 
 
 
always @(*) begin
 if( next_state == s20)
  gate=1;
  
 else 
 gate=0;
 
 end
 
 
endmodule
