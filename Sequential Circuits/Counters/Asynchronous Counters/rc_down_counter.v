module rc_down_counter (
    input clk, reset,
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b1111;   // start from 15 (F in hex)
        else
            q <= q - 1;     // count down
    end

endmodule
