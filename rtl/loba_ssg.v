module loba_ssg #(parameter N=16) (k1, k2, shift);
    input [N-1:0] k1, k2;
    output reg [N-1:0] shift;
    always @ (k1, k2) begin
        shift = k1 + k2 - 6;
    end
endmodule
