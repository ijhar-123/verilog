module mux_21_bufif
(
 input i0,i1,s,
 output y
);

 wire t;
 not (t,s);
 
bufif1 (y,i0,t);
bufif1 (y,i1,s);
 
 endmodule
