module loba_xh #(
    parameter N=16,
    parameter K=4)
    (x, xh, kh);
    input [N-1:0] x;
    output reg [K-1:0] xh;
    output reg [N-1:0] kh;      // #todo: define kh bits!

    reg [N-1:0] xrev;
    reg [N-1:0] xrev_inv;
    reg [N-1:0] xrev_inv_p1;
    reg [N-1:0] trailing_one;
    reg [N-1:0] leading_one;

    integer i;

    always @ (x) begin
        // reverse bit order
        for (i=0; i<N; i=i+1) begin
            xrev[i] = x[N-1-i];
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
                kh = i;
            end
        end

        //get k bits from leading one
        for (i=0; i<K; i=i+1) begin
            xh[i] = x[kh - (K-1) + i];
        end
    end
endmodule
