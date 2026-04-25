module Adder_Subtractor_4bit
(
  input a0,b0,c_in,a1,b1,a2,b2,a3,b3,mode,
  output s0,s1,s2,s3,c_out
    );
    
    //mode = 0 Addition
    //mode = 1 subtration
    
    
    wire t0;   //connect c0 and cin1
    wire t1;  //connect cin1 and cin2
    wire t2; //connect cin2 and cin3
    
    assign c_in = mode ;
    assign b0 = b0^mode;
    assign b1 = b1^mode;
    assign b2 = b2^mode;
    assign b3 = b3^mode;
    
    
    //for initial block 
    assign s0 = a0^b0^c_in ;
    assign t0 = a0&b0 | c_in&(a0^b0) ;
    
    //for 1st block
    assign s1 = a1^b1^t0;
    assign t1 = a1&b1 |  t0&(a1^b1) ;
    
    //for 2nd block
    assign s2 = a2^b2^t1;
    assign t2 = a2&b2 |  t1&(a2^b2) ;
    
    //for 3rd block
    assign s3 = a3^b3^t2;
    assign c_out = a3&b3 |  t2&(a3^b3) ;
     
endmodule