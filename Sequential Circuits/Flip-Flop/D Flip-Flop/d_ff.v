module d_ff (
    input D,       // Data input
    input CLK,     // Clock input
    output reg Q,  // Output
    output Qbar    // Complement output
);

assign Qbar = ~Q;

always @(posedge CLK) begin
    Q <= D;       // Q follows D on rising clock edge
end

endmodule
