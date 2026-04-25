`timescale 1ns / 1ps

module MUX_21(
    input [1:0]a,
    input s,
    output y
    );
    
    assign y= a[s] ;
    
endmodule
