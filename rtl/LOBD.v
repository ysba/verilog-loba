module LOBD (in_a, out_a);
    input [15:0] in_a;
    output reg [15:0] out_a;

    integer k;
    reg [15:0]w;

    always @ (*) begin
        out_a[15]=in_a[15];
        w[15]=in_a[15]?0:1;
        for (k=14;k>=0;k=k-1) begin
            w[k]=in_a[k]?0:w[k+1];
            out_a[k]=w[k+1]&in_a[k];
        end
    end
endmodule
