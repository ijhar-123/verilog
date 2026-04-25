
module my_41_mux
(  output y,
   input [3:0] i,
   input s0,s1 
    );
    
    wire t1,t2;
    mux_12 M1 (t1,i[0],i[1],s0);
    mux_12 M2 (t2,i[2],i[3],s0);
    mux_12 M3 (y,t1,t2,s1);
    
endmodule
