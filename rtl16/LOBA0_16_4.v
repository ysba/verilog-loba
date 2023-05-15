`include "LOBA_SPLIT.v"

module LOBA0_16_4 (A, B, P);

    input [16-1:0] A;
    input [16-1:0] B;
    output [2*16-1:0] P;

    wire [4-1:0] Ah;
    wire [4-1:0] Al;
    wire [$clog2(16)-1:0] k1a;
    wire [$clog2(16)-1:0] k2a;

    wire [4-1:0] Bh;
    wire [4-1:0] Bl;
    wire [$clog2(16)-1:0] k1b;
    wire [$clog2(16)-1:0] k2b;

    LOBA_SPLIT split_a (.X(A), .Xh(Ah), .kh(k1a), .Xl(Al), .kl(k2a));
    LOBA_SPLIT split_b (.X(B), .Xh(Bh), .kh(k1b), .Xl(Bl), .kl(k2b));

    assign P = ((Ah*Bh)<<(k1a+k1b-6));

endmodule
