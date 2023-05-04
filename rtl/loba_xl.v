module loba_xl #(
    parameter N=16,
    parameter K=4)
    (x, kh, xl, kl);
    input [N-1:0] x;
    input [N-1:0] kh;           // #todo: define kh bits!
    output reg [K-1:0] xl;
    output reg [N-1:0] kl;      // #todo: define kl bits!

    reg [N-1:0] mask;
    reg [N-1:0] xlow;
    reg [N-1:0] xrev;
    reg [N-1:0] xrev_inv;
    reg [N-1:0] xrev_inv_p1;
    reg [N-1:0] trailing_one;
    reg [N-1:0] leading_one;

    integer i;

    always @ (x) begin
        // set mask for clearing upper bits
        mask = {N{1'b1}} >> (N-kh+4);
        xlow = x & mask;

        // reverse bit order
        for (i=0; i<N; i=i+1) begin
            xrev[i] = xlow[N-1-i];
        end

        // invert all bits to get trailing one
        xrev_inv = ~xrev;

        // add one
        xrev_inv_p1 = xrev_inv + 1;

        // and with reversed input to isolate trailing one
        trailing_one = xrev_inv_p1 & xrev;

        // reverse again to get leading one instead of trailing one
        for (i=0; i < N; i=i+1) begin
            leading_one[i] = trailing_one[N-1-i];
        end

        // get leading one bit number
        for (i=0; i < N; i=i+1) begin
            if (leading_one[i]) begin
                kl = i;
            end
        end

        //get k bits from leading one
        for (i=0; i<K; i=i+1) begin
            xl[i] = xlow[kl - (K-1) + i];
        end
    end
endmodule
