module LOBA_SPLIT (X, Xh, Xl, kh, kl);

    input [15:0] X;
    output reg [3:0] Xh, Xl;
    output reg [$clog2(16)-1:0] kh, kl;

    wire [15:0] lob_h;
    wire [15:0] lob_l;
    reg [15:0] lower;

    LOBD lobd1 (.in_a(X), .out_a(lob_h));
    LOBD lobd2 (.in_a(lower), .out_a(lob_l));

    always @ (lob_h) begin
        case(lob_h)
            16'h0001: begin kh=4'h3; lower=16'h0000; Xh=X[3:0]; end
            16'h0002: begin kh=4'h3; lower=16'h0000; Xh=X[3:0]; end
            16'h0004: begin kh=4'h3; lower=16'h0000; Xh=X[3:0]; end
            16'h0008: begin kh=4'h3; lower=16'h0000; Xh=X[3:0]; end
            16'h0010: begin kh=4'h4; lower=16'h0001&X; Xh=X[4:1]; end
            16'h0020: begin kh=4'h5; lower=16'h0003&X; Xh=X[5:2]; end
            16'h0040: begin kh=4'h6; lower=16'h0007&X; Xh=X[6:3]; end
            16'h0080: begin kh=4'h7; lower=16'h000f&X; Xh=X[7:4]; end
            16'h0100: begin kh=4'h8; lower=16'h001f&X; Xh=X[8:5]; end
            16'h0200: begin kh=4'h9; lower=16'h003f&X; Xh=X[9:6]; end
            16'h0400: begin kh=4'ha; lower=16'h007f&X; Xh=X[10:7]; end
            16'h0800: begin kh=4'hb; lower=16'h00ff&X; Xh=X[11:8]; end
            16'h1000: begin kh=4'hc; lower=16'h01ff&X; Xh=X[12:9]; end
            16'h2000: begin kh=4'hd; lower=16'h03ff&X; Xh=X[13:10]; end
            16'h4000: begin kh=4'he; lower=16'h07ff&X; Xh=X[14:11]; end
            16'h8000: begin kh=4'hf; lower=16'h0fff&X; Xh=X[15:12]; end
            default: begin kh=4'h0; lower=16'h0000; Xh=16'd0; end
        endcase
    end

    always @ (lob_l) begin
        case(lob_l)
            16'h0001: begin kl=4'h3; Xl=X[3:0]; end
            16'h0002: begin kl=4'h3; Xl=X[3:0]; end
            16'h0004: begin kl=4'h3; Xl=X[3:0]; end
            16'h0008: begin kl=4'h3; Xl=X[3:0]; end
            16'h0010: begin kl=4'h4; Xl=X[4:1]; end
            16'h0020: begin kl=4'h5; Xl=X[5:2]; end
            16'h0040: begin kl=4'h6; Xl=X[6:3]; end
            16'h0080: begin kl=4'h7; Xl=X[7:4]; end
            16'h0100: begin kl=4'h8; Xl=X[8:5]; end
            16'h0200: begin kl=4'h9; Xl=X[9:6]; end
            16'h0400: begin kl=4'ha; Xl=X[10:7]; end
            16'h0800: begin kl=4'hb; Xl=X[11:8]; end
            default: begin kl=4'h0; Xl=16'd0; end
        endcase
    end
endmodule
