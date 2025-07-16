module half_subtractor_dataflow(input A, input B, output Diff, output Borrow);
    assign Diff = A ^ B;
    assign Borrow = (~A) & B;
endmodule
