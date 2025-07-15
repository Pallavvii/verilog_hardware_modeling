module full_adder_behavioral(
    input A, B, Cin,
    output reg Sum, Carry
);

always @ (A or B or Cin) begin
    {Carry, Sum} = A + B + Cin;
end

endmodule
