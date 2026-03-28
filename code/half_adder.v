module halfadder( output s,c_out, input a,b
    );
    
    xor o1(s,a,b);
    and a1(c_out,a,b);
endmodule
