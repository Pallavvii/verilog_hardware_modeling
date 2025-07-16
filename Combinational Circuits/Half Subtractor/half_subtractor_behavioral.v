module half_subtractor_behavioral(input A, input B, output reg Diff, output reg Borrow);
    always @ (A or B) begin
        Diff = A ^ B;
        Borrow = (~A) & B;
    end
endmodule
