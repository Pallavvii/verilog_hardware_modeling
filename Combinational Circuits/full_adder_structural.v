module full_adder_structural(
    input A, B, Cin,
    output Sum, Carry
);

wire sum1, carry1, carry2;

// First Half Adder
xor (sum1, A, B);
and (carry1, A, B);

// Second Half Adder
xor (Sum, sum1, Cin);
and (carry2, sum1, Cin);

// Final Carry Output
or (Carry, carry1, carry2);

endmodule
