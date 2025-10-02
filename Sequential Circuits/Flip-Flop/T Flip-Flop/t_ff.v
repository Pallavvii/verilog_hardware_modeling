module t_ff (
    input T, CLK,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

initial Q=0;

always @(posedge CLK) begin
    case (T)
        1'b0: Q <= Q;       // Hold state
        1'b1: Q <= ~Q;      // Toggle state
        default: Q <= Q;    // Safe default
    endcase
end

endmodule
