module full_adder( output s,c_out, input a,b,cin
    );
    wire t1,t2,t3;
    xor o1(t1,a,b),
         o2(s,t1,cin);
    and a1(t2,a,b),
        a2(t3,cin,t1);
    or o3(c_out,t2,t3);
endmodule
