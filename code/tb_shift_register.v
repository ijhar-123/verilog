`timescale 1ns / 1ps
`include "shift_register.v"

module tb_shift_register();
	wire so;
	reg  clk;
	reg  rst_n;
	reg  si;
	
	initial begin
		$monitor("Time = %0t | si = %b so = %b", $time, si, so);
		clk = 1'b0;
		$dumpfile("shift_register.vcd");   // file name
        $dumpvars(0, tb_shift_register);   // dump all variable
	end 
	
	always #10 clk = ~clk;
	
	initial begin
		rst_n = 1'b0;
		#10;
		rst_n = 1'b1;
		$display("-----------------Simulation will start from here-----------------");
		#200;
		$finish;
	end 
	
	initial begin
		repeat (20) begin
			si = $unsigned($random) % 2;
			#10;
		end	
	end
	
	shift_register dut (.so(so), .clk(clk), .rst_n(rst_n), .si(si));
	
endmodule
