module full_adder_dataflow(
    input A, B, Cin,
    output Sum, Carry
);

assign Sum = A ^ B ^ Cin;
assign Carry = (A & B) | (B & Cin) | (A & Cin);

endmodule
