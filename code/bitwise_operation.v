`timescale 1ns / 1ps

module bitwise_operation (
    input  [3:0] a,
    input  [3:0] b,
    output reg [3:0] out_and,
    output reg [3:0] out_or,
    output reg [3:0] out_xor,
    output reg [3:0] out_not_a
);

    bitwise_ops(a, b, out_and, out_or, out_xor, out_not_a);
    task bitwise_ops;
        input  [3:0] in_a, in_b;
        output [3:0] res_and, res_or, res_xor, res_not;
        begin
            res_and = in_a & in_b; // Bitwise AND
            res_or  = in_a | in_b; // Bitwise OR
            res_xor = in_a ^ in_b; // Bitwise XOR
            res_not = ~in_a;       // Bitwise NOT (Inverts in_a)
        end
    endtask
endmodule