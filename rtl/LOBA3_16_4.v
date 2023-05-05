`include "LOBA_SPLIT.v"
`include "LOBD.v"
`include "SSG.v"

module LOBA3_16_4 (A, B, P);

    input [15:0] A;
    input [15:0] B;
    output [31:0] P;

    wire [15:0] Ah;
    wire [15:0] Al;
    wire [3:0] k1a;
    wire [3:0] k2a;

    wire [15:0] Bh;
    wire [15:0] Bl;
    wire [3:0] k1b;
    wire [3:0] k2b;

    reg [$clog2(32)-1:0] shift_count_1;
    reg [$clog2(32)-1:0] shift_count_2;
    reg [$clog2(32)-1:0] shift_count_3;
    reg [$clog2(32)-1:0] shift_count_4;

    LOBA_SPLIT split1 (.X(A), .Xh(Ah), .kh(k1a), .Xl(Al), .kl(k2a));
    LOBA_SPLIT split2 (.X(B), .Xh(Bh), .kh(k1b), .Xl(Bl), .kl(k2b));
    SSG shift1 (.k1(k1a), .k2(k1b), .shift(shift_count_1));
    SSG shift2 (.k1(k1a), .k2(k2b), .shift(shift_count_2));
    SSG shift3 (.k1(k2a), .k2(k1b), .shift(shift_count_3));
    SSG shift4 (.k1(k2a), .k2(k2b), .shift(shift_count_4));

    assign P =
        ((Ah * Bh) << shift_count_1)
        +
        ((Ah * Bl) << shift_count_2)
        +
        ((Al * Bh) << shift_count_3)
        +
        ((Al * Bl) << shift_count_4);

endmodule
