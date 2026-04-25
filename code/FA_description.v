`timescale 1ns / 1ps

module FA_description(sum,carry,a,b,c);
input a,b,c;
output sum,carry;

udp_sum SUM (sum,a,b,c);
udp_FA_carry CARRY (carry,a,b,c);

endmodule
