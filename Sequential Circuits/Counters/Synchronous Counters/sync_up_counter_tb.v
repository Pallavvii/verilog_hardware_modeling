`timescale 1ns/1ps
module sync_up_counter_tb;

    reg clk, reset;
    wire [3:0] q;

    // Instantiate the counter
    sync_up_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // VCD dump for GTKWave
        $dumpfile("sync_up_counter_out.vcd");
        $dumpvars(0, sync_up_counter_tb);

        // Initialize signals
        clk = 0;
        reset = 1;   // assert reset
        #12 reset = 0;  // release reset after 12ns

        // Run simulation long enough to see rollover
        #200 $finish;
    end

endmodule
