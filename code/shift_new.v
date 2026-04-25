primitive udp_dff_edge1 (q, d, clk, rst_n);
    output q;
    input  d, clk, rst_n;
    reg q;

    initial q = 0;

    table
    //  d    clk      rst_n  :  q  :  q_next
    // ------------------------------------
        ?    ?        0      :  ?  :  0;      // Async Reset (Active Low)
        ?    ?       (01)    :  ?  :  -;      // Ignore reset de-assertion

    // Positive Edge Clocking
        0   (01)      1      :  ?  :  0;      // Latch 0
        1   (01)      1      :  ?  :  1;      // Latch 1
        0   (x1)      1      :  0  :  0;      // Maintain 0 on x->1 transition
        1   (x1)      1      :  1  :  1;      // Maintain 1 on x->1 transition

    // Ignoring transitions
        ?   (1?)      1      :  ?  :  -;      // Ignore Negedge or 1->x
        ?   (?0)      1      :  ?  :  -;      // Ignore transitions to 0
        (??) ?        1      :  ?  :  -;      // Data change during steady clock
    endtable
endprimitive

module shift_new(
	output so,
	input  clk,
	input  rst_n,
	input  si
	);
	
	reg [2:0] out;
	
	udp_dff_edge1 FF1 (out[0], si,     clk, rst_n);
	udp_dff_edge1 FF2 (out[1], out[0], clk, rst_n);
	udp_dff_edge1 FF3 (out[2], out[1], clk, rst_n);
	udp_dff_edge1 FF4 (so,     out[2], clk, rst_n);

endmodule