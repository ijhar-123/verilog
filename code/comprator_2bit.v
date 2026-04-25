`timescale 1ns / 1ps

/*module comprator_2bit(A1,A0,B1,B0,Greater_than,Equal_to,Less_than);
input A1,A0,B1,B0;
output Greater_than,Equal_to,Less_than;

assign Greater_than = A1&(~B1) | A0&(~B1)&(~B0) | A1&A0&(~B0) ;
assign Equal_to = ~((~A0)^(~B0)) & (~(~A1)^(~B1)) ;
assign Less_than = (~A1)&B1 | (~A0)&B1&B0 | B0(~A1)(~A0) ; */
module comprator_2bit(output [2:0]y, input [1:0]a,b);

assign y[2]= a>b;
assign y[1]= a==b;
assign y[0]= a<b;

endmodule
