module gray2seg (
    input  [3:0] gray,
    output [6:0] seg_out
);

    wire [3:0] binary;

    gray_to_bin u_g2b (
        .gray(gray),
        .binary(binary)
    );

    bin2seg u_bin2seg (
        .bin(binary),
        .seg_out(seg_out)
    );

endmodule