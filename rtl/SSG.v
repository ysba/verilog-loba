module SSG (k1, k2, shift);
    input [3:0] k1, k2;
    output reg [4:0] shift;
    always @ (k1, k2) begin
        shift = k1 + k2 - 4'd6;
    end
endmodule
