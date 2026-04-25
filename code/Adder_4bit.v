
module Adder_4bit
(
  input a0,b0,c_in,a1,b1,a2,b2,a3,b3,
  output s0,s1,s2,s3,c_out
    );
    
    wire t0;
    wire t1;
    wire t2;
    
    assign c_in = 1'b0 ;
    assign s0 = a0^b0^c_in ;
    assign t0 = a0&b0 | b0&c_in | c_in&a0 ;
    assign s1 = a1^b1^t0;
    assign t1 = a1&(~b1) | (~b1)&t0 | a1&t0 ;
    assign s2 = a2^b2^t1;
    assign t2 = a2&b2 | b2&t1 | a2&t1 ;
    assign s3 = a3^b3^t2;
    assign c_out = a3&b3 | b3&t2 | t2&a3 ;
     
endmodule
