`timescale 1ns / 1ps

module DD_FA_Q3(cout, sum, a, b, cin);

     output reg sum,cout;
    input a,b,cin;
     reg t1,t2,t3;
    always @(*)
    begin
     #3 t1 =  a^b;
     #3 t2 = a&b;
     #3 t3 = cin & t1;
     #3 sum = t1^cin;
     #3 cout = t2 | t3;
    end
endmodule
