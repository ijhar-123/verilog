module demux14_gatelevel
(
input i, 
input s1,s0,
output y0,y1,y2,y3
);
wire t1,t2;
not (t1,s0);
not (t2,s1);
and (y0,t1,t2,i);
and (y1,t2,s0,i);
and (y2,s1,t1,i);
and (y3,s1,s0,i);

endmodule