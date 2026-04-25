primitive udp_dff_edge1 (q, d, clk, rst_n);

	output q;
	input  d, clk, rst_n;
	
	reg q;
	
	initial 
		q = 0;
		
	/*	
	table
	// d    clk  rst_n : q : q+
		0    (01) 1     : ? : 0;
		1    (01) 1     : ? : 1;
		
		0    (0x) 1     : 0 : 0;
		1    (0x) 1     : 1 : 1;
		
		?    (x0) 1     : ? : -;
		
		?    (??) 0     : ? : 0;
		
		?    ?    0     : ? : 0;
		?    ?    (01)  : ? : -;
		(??) ?    1     : ? : -; 
	endtable
	*/

	table
    // d    clk      rst_n  :  q  :  q_next
    // ------------------------------------
       ?     ?        0     :  ?  :  0;      // Asynchronous Reset (Level-sensitive)
       ?     ?       (01)   :  ?  :  -;      // Ignore de-assertion of reset

    // Clock edges
       0    (01)      1     :  ?  :  0;      // Latch 0 on posedge
       1    (01)      1     :  ?  :  1;      // Latch 1 on posedge
       
    // Handling X/Transitions
       0    (0x)      1     :  0  :  0;      // Hold state if clock goes to unknown
       1    (0x)      1     :  1  :  1;
       ?    (10)      1     :  ?  :  -;      // Ignore negedge
       ?    (x0)      1     :  ?  :  -;

    // Data changes while clock is stable
       (??)  ?        1     :  ?  :  -; 
    endtable

endprimitive

module shift_register(
	output so,
	input  clk,
	input  rst_n,
	input  si
	);
	
	wire [2:0] out;
	
	udp_dff_edge1 FF1 (out[0], si,     clk, rst_n);
	udp_dff_edge1 FF2 (out[1], out[0], clk, rst_n);
	udp_dff_edge1 FF3 (out[2], out[1], clk, rst_n);
	udp_dff_edge1 FF4 (so,     out[2], clk, rst_n);

endmodule
