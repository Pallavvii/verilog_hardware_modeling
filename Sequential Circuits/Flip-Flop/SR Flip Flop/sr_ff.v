module sr_flipflop (
    input S,       // Set
    input R,       // Reset
    input CLK,     // Clock
    output reg Q,  // Output
    output Qbar    // Complement output
);

assign Qbar = ~Q; // Complement output

always @(posedge CLK) begin
    case ({S,R})
        2'b00: Q <= Q;      // Hold
        2'b01: Q <= 0;      // Reset
        2'b10: Q <= 1;      // Set
        2'b11: Q <= 1'b x ;   // Invalid state
        default: Q <=1'b x;   // Default Value
    endcase
end

endmodule
