`timescale 1ns / 1ps


module even_parity_checker(x,clk,z);
input x,clk;
output reg z;
reg even_odd; //machine state
parameter EVEN=0,ODD=1;

initial even_odd = EVEN;
always @(posedge clk)
case(even_odd)
EVEN : begin
       z <= x ? 1:0 ;
       even_odd <= x ? ODD : EVEN ;
       end
       
ODD : begin
      z <= x ? 0:1;
      even_odd <= EVEN;
      end
      
      default:even_odd <= EVEN;
endcase
endmodule      


module tb_even_parity_checker;
reg clk,x;
wire z;
      
even_parity_checker PAR (.x(x),.clk(clk),.z(z));

always #5 clk=~clk;
initial
begin
 $dumpfile ("parity.vcd");
 $dumpvars (0,tb_even_parity_checker);
 $monitor("Time=%0t | x=%b | state=%b | Parity (z)=%b", $time, x, PAR.even_odd, z);
 clk = 1'b0;
 
 
 
 x=0;#2 x=0; #10 x=1; #10 x=1; #10 x=1;
#10 x=0; #10 x=1; #10 x=1; #10 x=0;
#10 x=0; #10 x=1; #10 x=1; #10 x=0;

#10 $finish;

end
endmodule  
