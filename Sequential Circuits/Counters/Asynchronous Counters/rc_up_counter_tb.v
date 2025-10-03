
module rc_up_counter_tb;

    reg clk, reset;
    wire [3:0] q;

    // Instantiate the counter
    rc_up_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // VCD dump for waveform viewing
        $dumpfile("rc_up_counter_out.vcd");
        $dumpvars(0, rc_up_counter_tb);

        // Initialize
        clk = 0;
        reset = 1;

        // Release reset after some time
        #10 reset = 0;

        // Run simulation for some time
        #200 $finish;
    end

endmodule
