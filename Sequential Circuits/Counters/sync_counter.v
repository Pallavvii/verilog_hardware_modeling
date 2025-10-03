module sync_up_down_counter(
    input clk,
    input reset,
    input up_down,    // 1 = up, 0 = down
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if(reset)
            q <= 4'b0000;
        else if(up_down)
            q <= q + 1;
        else
            q <= q - 1;
    end

endmodule
