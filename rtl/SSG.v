module SSG #(parameter K=4) (k1, k2, shift);
    input [K-1:0] k1, k2;
    output reg [K:0] shift;
    always @ (*) begin
        shift = k1 + k2 - 6;
    end
endmodule
