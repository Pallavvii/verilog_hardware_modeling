module rc_up_counter (
    input clk, reset,
    output [3:0] q
);

    wire q0, q1, q2, q3;

    // First T flip-flop toggles on main clock
    t_ff ff0 (.clk(clk),     .reset(reset), .T(1'b1), .q(q0));
    // Subsequent TFFs toggle on negedge of previous Q
    t_ff ff1 (.clk(~q0),    .reset(reset), .T(1'b1), .q(q1));
    t_ff ff2 (.clk(~q1),    .reset(reset), .T(1'b1), .q(q2));
    t_ff ff3 (.clk(~q2),    .reset(reset), .T(1'b1), .q(q3));

    
    assign q = {q3, q2, q1, q0};

endmodule

// T Flip-Flop Module
module t_ff (
    input clk, reset, T,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (T)
            q <= ~q;
    end
endmodule
