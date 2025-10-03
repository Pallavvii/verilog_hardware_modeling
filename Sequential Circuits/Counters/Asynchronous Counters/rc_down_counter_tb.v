
module rc_down_counter_tb;

    reg clk, reset;
    wire [3:0] q;

    // Instantiate the counter
    rc_down_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        
        $dumpfile("rc_down_counter_out.vcd");
        $dumpvars(0, rc_down_counter_tb);

        // Initialize
        clk = 0;
        reset = 1;   // apply reset
        #10 reset = 0;  // release reset

        // Run for some cycles
        #200 $finish;
    end

endmodule
