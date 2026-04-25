`timescale 1ns / 1ps

module Gray_Code_Detector(input clock,input reset,output [2:0] gray);
    parameter s0=3'b000, s1=3'b001, s2=3'b011, s3=3'b010, 
              s4=3'b110, s5=3'b111, s6=3'b101, s7=3'b100;
    reg [2:0] state;
    assign gray = state;

    always @(posedge clock or posedge reset) 
    begin
    if (reset) 
            state <= s0;
        else
            begin
            case(state)
                s0: state <= s1;
                s1: state <= s2;
                s2: state <= s3;
                s3: state <= s4;
                s4: state <= s5;
                s5: state <= s6;
                s6: state <= s7;
                s7: state <= s0;
                default: state <= s0;
            endcase
       end
    end
endmodule

module tb_Gray_Code_Detector;
    reg clk;
    reg rst;
    wire [2:0] gray;

    // Instantiate UUT
    Gray_Code_Detector X1 (.clock(clk),.reset(rst),.gray(gray));

    // Clock Logic
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #100 $finish;
    end

    initial begin
        $monitor("Time: %0t | Gray Output: %b", $time, gray);
    end
endmodule