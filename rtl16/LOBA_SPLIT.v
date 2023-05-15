`include "LEADING_ONE_BIT.v"

module LOBA_SPLIT (X, Xh, Xl, kh, kl);

    input [15:0] X;
    output reg [3:0] Xh;
    output reg [3:0] Xl;
    output reg [$clog2(16)-1:0] kh;
    output reg [$clog2(16)-1:0] kl;

    wire [15:0] lobh;
    wire [15:0] lobl;
    reg [15:0] lower;

    LEADING_ONE_BIT lob1 (.x(X), .y(lobh));
    LEADING_ONE_BIT lob2 (.x(lower), .y(lobl));

    always @ (lobh) begin
        case(lobh)
            16'h0010: begin kh<=4'h4; Xh<=X[4:1]; lower<=0; end
            16'h0020: begin kh<=4'h5; Xh<=X[5:2]; lower<=0; end
            16'h0040: begin kh<=4'h6; Xh<=X[6:3]; lower<=0; end
            16'h0080: begin kh<=4'h7; Xh<=X[7:4]; lower<=X[3:0]; end
            16'h0100: begin kh<=4'h8; Xh<=X[8:5]; lower<=X[4:0]; end
            16'h0200: begin kh<=4'h9; Xh<=X[9:6]; lower<=X[5:0]; end
            16'h0400: begin kh<=4'ha; Xh<=X[10:7]; lower<=X[6:0]; end
            16'h0800: begin kh<=4'hb; Xh<=X[11:8]; lower<=X[7:0]; end
            16'h1000: begin kh<=4'hc; Xh<=X[12:9]; lower<=X[8:0]; end
            16'h2000: begin kh<=4'hd; Xh<=X[13:10]; lower<=X[9:0]; end
            16'h4000: begin kh<=4'he; Xh<=X[14:11]; lower<=X[10:0]; end
            16'h8000: begin kh<=4'hf; Xh<=X[15:12]; lower<=X[11:0]; end
            default: begin kh<=4'h3; Xh<=X[3:0]; lower<=0; end
        endcase
    end

    always @ (lobl) begin
        case(lobl)
            16'h0008: begin kl<=3; Xl<=X[3:0]; end
            16'h0010: begin kl<=4; Xl<=X[4:1]; end
            16'h0020: begin kl<=5; Xl<=X[5:2]; end
            16'h0040: begin kl<=6; Xl<=X[6:3]; end
            16'h0080: begin kl<=7; Xl<=X[7:4]; end
            16'h0100: begin kl<=8; Xl<=X[8:5]; end
            16'h0200: begin kl<=9; Xl<=X[9:6]; end
            16'h0400: begin kl<=10; Xl<=X[10:7]; end
            16'h0800: begin kl<=11; Xl<=X[11:8]; end
            default: begin kl<=0; Xl<=0; end
        endcase
    end
endmodule
