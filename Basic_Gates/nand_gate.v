module nand_gate (
    input a,
    input b,
    output y
);

assign y = ~(a & b);  // NAND = NOT (A AND B)

endmodule
