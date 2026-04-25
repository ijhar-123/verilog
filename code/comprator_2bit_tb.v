`timescale 1ns / 1ps

module comprator_2bit_tb;
reg [1:0]a,b;
wire [2:0]y;
 comprator_2bit z(y,a,b);
 
initial begin
$monitor("%b y=%b",$time,y);

#10 a=2'b00; b=2'b01;
#10 a=2'b01; b=2'b01;
#10 a=2'b11; b=2'b01;
#10 $finish; 
end

endmodule
