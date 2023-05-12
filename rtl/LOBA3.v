`include "LOBA_SPLIT.v"
`include "LOBD.v"
`include "SSG.v"

module LOBA3 #(parameter N=16, parameter K=4) (A, B, P);

    input [N-1:0] A;
    input [N-1:0] B;
    output [2*N-1:0] P;

    wire [K-1:0] Ah;
    wire [K-1:0] Al;
    wire [$clog2(N)-1:0] k1a;
    wire [$clog2(N)-1:0] k2a;

    wire [K-1:0] Bh;
    wire [K-1:0] Bl;
    wire [$clog2(N)-1:0] k1b;
    wire [$clog2(N)-1:0] k2b;

    wire [$clog2(2*N)-1:0] shift_count_0;
    wire [$clog2(2*N)-1:0] shift_count_1;
    wire [$clog2(2*N)-1:0] shift_count_2;
    wire [$clog2(2*N)-1:0] shift_count_3;

    LOBA_SPLIT #(.N(N), .K(K)) split_a (.X(A), .Xh(Ah), .kh(k1a), .Xl(Al), .kl(k2a));
    LOBA_SPLIT #(.N(N), .K(K)) split_b (.X(B), .Xh(Bh), .kh(k1b), .Xl(Bl), .kl(k2b));
    SSG #(.K(K)) ssg0 (.k1(k1a), .k2(k1b), .shift(shift_count_0));
    SSG #(.K(K)) ssg1 (.k1(k1a), .k2(k2b), .shift(shift_count_1));
    SSG #(.K(K)) ssg2 (.k1(k2a), .k2(k1b), .shift(shift_count_2));
    SSG #(.K(K)) ssg3 (.k1(k2a), .k2(k2b), .shift(shift_count_3));

    assign P =
        ((Ah * Bh) << shift_count_0)
        +
        ((Ah * Bl) << shift_count_1)
        +
        ((Al * Bh) << shift_count_2)
        +
        ((Al * Bl) << shift_count_3);

endmodule
