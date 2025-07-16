module full_subtractor_dataflow(
    input A, B, Bin,
    output Difference, Borrow
);
assign Difference = A ^ B ^ Bin;
assign Borrow = (~A & B) | (B & Bin) | (~A & Bin);
endmodule
