module test;

    parameter N=16;
    parameter K=4;

    reg [N-1:0] a;
    reg [N-1:0] b;
    wire [2*N-1:0] p;

    LOBA0_16_4 dut (.A(a),.B(b),.P(p));

    initial begin
        $monitor("a:%h, b:%h, p:%h %d\n", a, b, p, p);
    end

    initial begin
        #0
        a = 16'b0100100011111001;
        b = 16'b0011000011101010;
    end

endmodule
