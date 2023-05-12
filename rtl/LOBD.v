module LOBD #(parameter N=16) (in_a, out_a);
    input [N-1:0] in_a;
    output reg [N-1:0] out_a;
    integer k;
    reg [N-1:0]w;
    always @ (*) begin
        out_a[N-1]=in_a[N-1];
        w[N-1]=in_a[N-1]?0:1;
        for (k=N-2;k>=0;k=k-1) begin
            w[k]=in_a[k]?0:w[k+1];
            out_a[k]=w[k+1]&in_a[k];
        end
    end
endmodule
