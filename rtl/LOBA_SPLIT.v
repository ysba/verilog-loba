module LOBA_SPLIT #(parameter N=16, parameter K=4)
    (X, Xh, Xl, kh, kl);

    input [N-1:0] X;
    output reg [K-1:0] Xh;
    output reg [K-1:0] Xl;
    output reg [$clog2(N)-1:0] kh;
    output reg [$clog2(N)-1:0] kl;

    wire [N-1:0] lobh;
    wire [N-1:0] lobl;
    reg [N-1:0] lower;
    genvar i;

    LOBD lobd1 (.in_a(X), .out_a(lobh));
    LOBD lobd2 (.in_a(lower), .out_a(lobl));

    generate
        for (i=N-1; i>K; i=i-1) begin
            always @ (*) begin
                if (lobh[i] == 1) begin
                    kh <= i;
                    Xh <= X[i:i-K+1];
                    lower <= X[i-K:0];
                end
            end
        end
    endgenerate

    generate
        for (i=N-1; i>K; i=i-1) begin
            always @ (*) begin
                if (lobl[i] == 1) begin
                    kl <= i;
                    Xl <= X[i:i-K+1];
                end
            end
        end
    endgenerate

endmodule
