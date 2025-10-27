// Parameterized SISO (Serial In Serial Out) Shift Register
module SISO #(
    parameter N = 4   // Number of bits in the shift register
)(
    input clk,          // Clock signal
    input reset,        // Active high reset
    input serial_in,    // Serial input bit
    output reg serial_out // Serial output bit
);

    reg [N-1:0] shift_reg; // Shift register of N bits

    always @(posedge clk or posedge reset) begin
        if (reset)
            shift_reg <= {N{1'b0}}; // Clear register
        else
            shift_reg <= {shift_reg[N-2:0], serial_in}; // Shift left and insert new bit
    end

    always @(*) begin
        serial_out = shift_reg[N-1]; // Output MSB
    end

endmodule
