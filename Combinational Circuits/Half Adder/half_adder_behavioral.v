module half_adder_behavioral(
    input A, B,
    output reg Sum, Carry
);

always @ (A or B) begin
    Sum = A ^ B;     // XOR for sum
    Carry = A & B;   // AND for carry
end

endmodule
