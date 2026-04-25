`timescale 1ns / 1ps

module FA_struct_tb;

reg a,b,c;
wire sum,cout;

FA_struct A1(sum,cout,a,b,c);

initial 
$monitor ($time," C_out=%b , Sum=%b , A=%b , B=%b , C=%b " , cout, sum,a,b,c);

initial begin

   a = 0; b = 0; c = 0;
#5 a = 1; b = 1; c = 0;
#10 a = 1; b = 0; c = 1;
#15 a = 0; b = 1; c = 1;
#20 a = 1; b = 1; c = 1;
#25 a = 0; b = 0; c = 1;

end

endmodule
