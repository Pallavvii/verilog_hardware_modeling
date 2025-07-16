module full_subtractor_structural(
    input A, B, Bin,
    output Difference, Borrow
);
    wire w1, w2, w3, w4, w5, w6;

    xor (w1, A, B);
    xor (Difference, w1, Bin);

    not (w2, A);
    and (w3, w2, B);
    and (w4, B, Bin);
    and (w5, w2, Bin);
    or (Borrow, w3, w4, w5);
endmodule
