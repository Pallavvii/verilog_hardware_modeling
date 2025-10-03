module sync_up_counter (
    input clk, reset,
    output reg [3:0] q
);

  
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;   // start at 0
        else
            q <= q + 1;     // increment by 1 each clock
    end

endmodule
