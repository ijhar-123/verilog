
module subtractor_4bit
(
  input a0,b0,c_in,a1,b1,a2,b2,a3,b3,
  output d0,d1,d2,d3,b_out
    );
    
    wire t0;
    wire t1;
    wire t2;
    
    assign c_in = 1'b1 ;
    assign d0 = a0^(~b0)^c_in ;
    assign t0 = a0&b0 | (~b0)&c_in | c_in&a0 ;
    assign d1 = a1^(~b1)^t0;
    assign t1 = a1&(~b1) | (~b1)&t0 | a1&t0 ;
    assign d2 = a2^(~b2)^t1;
    assign t2 = a2&(~b2) | (~b2)&t1 | a2&t1 ;
    assign d3 = a3^(~b3)^t2;
    assign b_out = a3&(~b3) | (~b3)&t2 | t2&a3 ;
     
endmodule
