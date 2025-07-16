module half_subtractor_structural(input A, input B, output Diff, output Borrow);
    wire notA;

    not (notA, A);
    xor (Diff, A, B);
    and (Borrow, notA, B);
endmodule
