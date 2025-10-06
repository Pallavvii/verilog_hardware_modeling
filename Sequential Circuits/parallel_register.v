module parallel_register (
    input clk,          // Clock input
    input reset,        // Synchronous reset
    input [3:0] d,      // 4-bit parallel data input
    input load,         // Load enable
    output reg [3:0] q  // 4-bit register output
);

    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;      // Reset the register
        else if (load)
            q <= d;            // Load parallel data
    end

endmodule
