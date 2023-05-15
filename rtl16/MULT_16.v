`include "LOBA_SPLIT.v"

module MULT_16 (A, B, P);

    input [16-1:0] A;
    input [16-1:0] B;
    output [2*16-1:0] P;

    assign P = A*B;

endmodule
