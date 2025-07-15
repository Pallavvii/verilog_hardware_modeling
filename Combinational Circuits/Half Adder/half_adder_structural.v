module half_adder_structural(
    input A, B,
    output Sum, Carry
);

// Gate-level instantiation
xor (Sum, A, B);
and (Carry, A, B);

endmodule
