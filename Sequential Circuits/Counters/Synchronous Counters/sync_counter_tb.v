`timescale 1ns/1ps

module tb_sync_up_down_counter;

    reg clk, reset, up_down;
    wire [3:0] q;

    sync_up_down_counter uut(
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .q(q)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("sync_up_down_counter.vcd");
        $dumpvars(0, tb_sync_up_down_counter);
        $display("Time\tclk\treset\tup_down\tq[3:0]");
        $monitor("%0dns\t%b\t%b\t%b\t%b", $time, clk, reset, up_down, q);

        reset = 1; up_down = 1;
        #10 reset = 0;

        // Up counting
        up_down = 1;
        #100;

        // Down counting
        up_down = 0;
        #100;

        $finish;
    end

endmodule
