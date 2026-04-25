
module my_51_mux
  (
   output y,
   input [4:0] i,
   input s0,s1,s2
    );
     wire w1,w2,w3;
     
     mux_12 M1 (w1,i[0],i[1],s0);
     mux_12 M2 (w2,i[2],i[3],s0);
     mux_12 M3 (w3,w2,w3,s1);
     mux_12 M4 (y,w3,i[4],s2);

endmodule
