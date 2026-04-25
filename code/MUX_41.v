`timescale 1ns / 1ps

module MUX_41(
    input [3:0]a,
    input [1:0]s,
    output y
    );
    
    assign y= a[s] ;
    
endmodule
