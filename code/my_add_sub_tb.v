`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 16:55:35
// Design Name: 
// Module Name: my_add_sub_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_add_sub_tb;

wire [3:0]o;
wire c;
reg [3:0] x,y;
reg m;

my_add_sub A1 (.s(o),.c_out(c),.a(x),.b(y),.mode(m));

initial begin
$display("Simulation start");
$monitor("Time=%0t | In1=%b,In2=%b,Mode=%b,\n Sum/Sub=%b,Carry=%b",$time,x,y,m,o,c);

    x=4'b1011;y=4'b1110;m=0;
#10 x=4'b1111;y=4'b1100;m=1;

#10 $display("Simulation end");
$finish;

end
endmodule
