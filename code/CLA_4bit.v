module cla_4bit(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [3:0] p, g;
    wire [3:1] c;

    // 1. Propagate and Generate logic
    assign p = a ^ b; // Carry propagates if one input is 1
    assign g = a & b; // Carry generates if both inputs are 1

    // 2. Carry Lookahead logic (calculated in parallel)
    assign c[1] = g[0] | (p[0] & cin);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
    
    // 3. Final Carry-out
    assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

    // 4. Sum logic
    assign sum[0] = p[0] ^ cin;
    assign sum[1] = p[1] ^ c[1];
    assign sum[2] = p[2] ^ c[2];
    assign sum[3] = p[3] ^ c[3];

endmodule
