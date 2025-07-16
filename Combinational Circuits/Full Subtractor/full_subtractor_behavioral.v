module full_subtractor_behavioral(
    input A, B, Bin,
    output reg Difference, Borrow
);
always @ (A or B or Bin) begin
    {Borrow, Difference} = A - B - Bin;
end
endmodule
