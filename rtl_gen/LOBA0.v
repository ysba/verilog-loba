`include "LOBA_SPLIT.v"

module LOBA0 #(parameter N=16, parameter K=4) (A, B, P);

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

    LOBA_SPLIT #(.N(N), .K(K)) split_a (.X(A), .Xh(Ah), .kh(k1a), .Xl(Al), .kl(k2a));
    LOBA_SPLIT #(.N(N), .K(K)) split_b (.X(B), .Xh(Bh), .kh(k1b), .Xl(Bl), .kl(k2b));

    assign P = ((Ah*Bh)<<(k1a+k1b-6));

endmodule
